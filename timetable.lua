local Node = require "class.Node"
local Button = require "class.Button"

timetable = gamestate.new()

local timetable_back = love.graphics.newImage("img/timetable_back.png")
local timetable_node = love.graphics.newImage("img/timetable_node.png")
local timetable_node_active = love.graphics.newImage("img/timetable_node_active.png")

local timelineHeight = 24
local timelineSecondWidth = 1

function timetable:init()
    timetable.rootNode = Node:new(nil, 0, 1)

    timetable.timelines = 1

    self.nodeLocations = {}
    self.selectedNode = nil

    self.buttons = {
        Button:new(20, 200, 105, 20, "Start from here", function() self:startOnNode(self.activeNode) end)
    }

    self.buttons[1].active = false
end

function timetable:enter(from, transition)
    self.from = from
    self.offY = 0

    if self.from == game and transition ~= false then
        self.offY = 225
        timer.tween(0.3, self, {offY = 0}, 'out-quad')
    end
end

function timetable:update(dt)
    if controls:pressed("opentimeline") then
        self:close()
    end
end

function timetable:draw()
    if self.from == game then
        self.from:draw()
    end

    love.graphics.push()
    love.graphics.scale(SCALE, SCALE)
    love.graphics.translate(0, self.offY)

    love.graphics.draw(timetable_back)

    love.graphics.printf("Timelines :D", 0, 5, 400, "center")

    self.nodeLocations = {}
    self:drawNodeAndChildren(self.rootNode, 16, 48)

    for _, button in ipairs(self.buttons) do
        button:draw()
    end

    love.graphics.pop()
end

function timetable:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    for _, nodeLocation in ipairs(self.nodeLocations) do
        if x > nodeLocation.x-8 and x <= nodeLocation.x+10 and y > nodeLocation.y-8 and y <= nodeLocation.y+10 then
            game.selectedNode = nodeLocation.node
            self.buttons[1].active = true
        end
    end

    for _, button in ipairs(self.buttons) do
        button:mousepressed(x, y)
    end
end

function timetable:drawNodeAndChildren(node, offX, offY)
    for _, childNode in ipairs(node.children) do
        local timelineOffset = childNode.timeline - node.timeline
        local nodeTimeOffset = childNode.nodeTime

        local w = nodeTimeOffset*timelineSecondWidth
        local h = timelineHeight*timelineOffset

        local newX = offX + w
        local newY = offY + h

        timetable.drawArrow(offX-1, offY+10, w+1, h)

        love.graphics.push()

        self:drawNodeAndChildren(childNode, newX, newY)
        love.graphics.pop()
    end
    local img = timetable_node

    if node == game.selectedNode then
        img = timetable_node_active
    end

    love.graphics.draw(img, offX, offY, 0, 1, 1, 8, 8)

    table.insert(self.nodeLocations, {node=node, x=offX, y=offY})
end

local timetable_arrow = love.graphics.newImage("img/timetable_arrow.png")
local timetable_quad_top = love.graphics.newQuad(0, 0, 4, 4, timetable_arrow)
local timetable_quad_vertical = love.graphics.newQuad(0, 4, 4, 1, timetable_arrow)
local timetable_quad_left = love.graphics.newQuad(0, 5, 4, 4, timetable_arrow)
local timetable_quad_horizontal = love.graphics.newQuad(4, 5, 1, 4, timetable_arrow)
local timetable_quad_end = love.graphics.newQuad(5, 0, timetable_arrow:getWidth()-5, timetable_arrow:getHeight(), timetable_arrow)

function timetable.drawArrow(x, y, w, h)

    love.graphics.draw(timetable_arrow, timetable_quad_left, x, y+h-11)

    if h > 0 then
        love.graphics.draw(timetable_arrow, timetable_quad_vertical, x, y, 0, 1, h-10)
    end

    if w > 0 then
        love.graphics.draw(timetable_arrow, timetable_quad_horizontal, x+4, y+h-11, 0, w-16, 1)
    end

    love.graphics.draw(timetable_arrow, timetable_quad_end, x+w-12, y+h-16)
end

function timetable:close()
    local function backToGame()
        gamestate.pop()
    end

    timer.tween(0.3, self, {offY = 255}, 'out-quad', backToGame)
end

function timetable:startOnNode(node)
    self.activeNode = timetable.node
    self:close()
end