local Node = require "class.Node"

timetable = gamestate.new()

local timetable_back = love.graphics.newImage("img/timetable_back.png")
local timetable_node = love.graphics.newImage("img/timetable_node.png")
local timetable_node_no_children = love.graphics.newImage("img/timetable_node_no_children.png")

local timelineHeight = 24
local timelineSecondWidth = 0.8

function timetable:init()
    timetable.rootNode = Node:new(nil, 0, 1)

    timetable.timelines = 1

    self.nodeLocations = {}
end

function timetable:enter(from)
    self.from = from

    if self.from ~= menu then
        self.offY = 225
        timer.tween(0.3, self, {offY = 0}, 'out-quad')
    end
end

function timetable:update(dt)
    local function backToGame()
        gamestate.pop()
    end

    if controls:pressed("opentimeline") then
        timer.tween(0.3, self, {offY = 255}, 'out-quad', backToGame)
    end
end

function timetable:draw()
    if self.from then
        self.from:draw()
    end

    love.graphics.push()
    love.graphics.scale(SCALE, SCALE)
    love.graphics.translate(0, self.offY)

    love.graphics.draw(timetable_back)

    self.nodeLocations = {}
    self:drawNodeAndChildren(self.rootNode, 16, 32)

    love.graphics.pop()
end

function timetable:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    for _, nodeLocation in ipairs(self.nodeLocations) do
        if x > nodeLocation.x-8 and x <= nodeLocation.x+10 and y > nodeLocation.y-8 and y <= nodeLocation.y+10 then
            game.activeNode = nodeLocation.node
        end
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
    love.graphics.draw(timetable_node, offX, offY, 0, 1, 1, 8, 8)

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