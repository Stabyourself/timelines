local Node = require "class.Node"
local Button = require "class.Button"

timetable = gamestate.new()

local timetable_back = love.graphics.newImage("img/timetable_back.png")
local timetable_node = love.graphics.newImage("img/timetable_node.png")
local timetable_node_active = love.graphics.newImage("img/timetable_node_active.png")
local timeline_left = love.graphics.newImage("img/timeline_left.png")
local timetable_end = love.graphics.newImage("img/timetable_end.png")
local timetable_active = love.graphics.newImage("img/player.png")

local timelineHeight = 24
local timelineSecondWidth = 20

function timetable:init()
    timetable.timelines = 1

    self.nodeLocations = {}

    self.buttons = {
        Button:new(20, 200, 105, 20, "Start from here", function() game:startOnNode(self.selectedNode); self:close() end),
        Button:new(275, 200, 105, 20, "Back", function() self:close() end),
    }

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

    for y = 1, self.timelines do
        love.graphics.draw(timeline_left, 0, 37+(y-1)*timelineHeight)
    end

    love.graphics.printf("Timelines :D", 0, 5, 400, "center")

    self.nodeLocations = {}
    self:drawNodeAndChildren(game.rootNode, 32, 48)

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
            self.selectedNode = nodeLocation.node
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

        timetable.drawArrow(offX-2, offY+9, w+1, h)

        love.graphics.push()

        self:drawNodeAndChildren(childNode, newX, newY)
        love.graphics.pop()
    end

    local img = timetable_node

    if node == self.selectedNode then
        img = timetable_node_active
    end

    if node == game.activeNode and node.nodeTime > 0 then
        img = timetable_active
    end

    if node.ended then
        img = timetable_end
    end

    love.graphics.draw(img, offX, offY, 0, 1, 1, img:getWidth()/2, img:getHeight()/2)

    if not node.ended then
        table.insert(self.nodeLocations, {node=node, x=offX, y=offY})
    end
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