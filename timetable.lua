local Button = require "class.Button"
local anim8 = require "lib.anim8"
local Node = require "class.Node"

timetable = gamestate.new()

local timetable_title = love.graphics.newImage("img/title.png")

local timetable_back = love.graphics.newImage("img/timetable_back.png")

local timetable_node = love.graphics.newImage("img/timetable_node.png")
local timetable_node_selected = love.graphics.newImage("img/timetable_node_selected.png")
local timetable_node_active = love.graphics.newImage("img/timetable_node_active.png")
local timetable_node_ended = love.graphics.newImage("img/timetable_node_ended.png")
local timetable_node_abandoned = love.graphics.newImage("img/timetable_node_abandoned.png")
local timetable_node_overlay = love.graphics.newImage("img/timetable_node_overlay.png")

local grid = anim8.newGrid(18, 18, timetable_node:getWidth(), timetable_node:getHeight())
local nodeAnimation = anim8.newAnimation(grid("1-4", 1), 0.1)
local nodeAnimationActive = anim8.newAnimation(grid("1-4", 1), 0.05)

local timelineHeight = 18
local timelineSecondWidth = 1

function timetable:init()
    timetable.timelines = 1

    self.nodeLocations = {}

    self.buttons = {
        Button:new(20, 200, 105, 20, "Start from here", function() game:startOnNode(self.selectedNode); self:close() end),
        Button:new(275, 200, 105, 20, "Back", function() self:close() end),
    }

    for i = 1, 3 do
        local node = Node:new(game.rootNode, i)
        node.nodeTime = love.math.random(30, 150)
        table.insert(game.rootNode.children, node)
    end

    local node = Node:new(game.rootNode.children[1], 1)
    node.nodeTime = love.math.random(30, 150)
    table.insert(game.rootNode.children[1].children, node)

    for i = 4, 6 do
        local node = Node:new(game.rootNode.children[1], i)
        node.nodeTime = love.math.random(30, 150)
        table.insert(game.rootNode.children[1].children, node)
    end

    local node = Node:new(game.rootNode.children[2], 2)
    node.nodeTime = love.math.random(30, 150)
    table.insert(game.rootNode.children[2].children, node)

    self.buttons[1].active = false
end

function timetable:enter(from, booted)
    self.selectedNode = nil
    self.booted = booted or false
    self.from = from
    self.offY = 0

    if self.from == game and not booted then
        self.offY = 225
        timer.tween(0.3, self, {offY = 0}, 'out-quad')
    end

    self.buttons[2].active = not booted
end

function timetable:update(dt)
    nodeAnimation:update(dt)
    nodeAnimationActive:update(dt)

    if not self.booted and controls:pressed("closetimeline") then
        self:close()
    end
end

function timetable:draw()
    if self.from == game then
        self.from:draw()
    end

    love.graphics.push()
    love.graphics.translate(0, self.offY)

    love.graphics.draw(timetable_back)

    love.graphics.draw(timetable_title, (WIDTH-timetable_title:getWidth())*.5, 2)

    -- for y = 1, self.timelines do
    --     love.graphics.draw(timeline_left, 0, 37+(y-1)*timelineHeight)
    -- end

    self.nodeLocations = {}

    love.graphics.push()
    love.graphics.translate(16, 32)

    self:drawNodeAndChildren(game.rootNode, 16, 16)

    love.graphics.pop()

    for _, button in ipairs(self.buttons) do
        button:draw()
    end

    love.graphics.pop()
end

function timetable:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    y = y - 16

    for _, nodeLocation in ipairs(self.nodeLocations) do
        if x > nodeLocation.x and x <= nodeLocation.x+18 and y > nodeLocation.y and y <= nodeLocation.y+18 then
            self.selectedNode = nodeLocation.node
            self.buttons[1].active = true
        end
    end

    for _, button in ipairs(self.buttons) do
        button:mousepressed(x, y)
    end
end

function timetable:drawNodeAndChildren(node, x, y)
    for _, childNode in ipairs(node.children) do
        local nodeTimeOffset = childNode.nodeTime
        local timelineOffset = childNode.timeline - node.timeline

        local w = nodeTimeOffset*timelineSecondWidth
        local h = timelineHeight*timelineOffset

        -- timetable.drawArrow(x-2, y+9, w+1, h)

        love.graphics.push()
        love.graphics.translate(w, h)

        self:drawNodeAndChildren(childNode, x+w, y+h)

        love.graphics.pop()
    end

    local img = timetable_node
    local animation = nodeAnimation

    if node == self.selectedNode then
        img = timetable_node_selected
        animation = nodeAnimationActive
    elseif node == game.activeNode then
        img = timetable_node_active
    elseif node.ended then
        img = timetable_node_ended
    end

    animation:draw(img)
    love.graphics.draw(timetable_node_overlay)

    if not node.ended then
        table.insert(self.nodeLocations, {node=node, x=x, y=y})
    end
end

function timetable:close()
    local function backToGame()
        gamestate.pop()
    end

    timer.tween(0.3, self, {offY = 255}, 'out-quad', backToGame)
end

