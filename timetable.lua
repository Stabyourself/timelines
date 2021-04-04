local Node = require "class.Node"

timetable = gamestate.new()

local timetable_back = love.graphics.newImage("img/timetable_back.png")
local timetable_node = love.graphics.newImage("img/timetable_node.png")
local timetable_node_no_children = love.graphics.newImage("img/timetable_node_no_children.png")

local timelineHeight = 24
local timelineSecondWidth = 0.8

function timetable:init()
    timetable.nodes = {}

    timetable.rootNode = Node:new(nil, 0, 1)

    table.insert(timetable.nodes, timetable.rootNode)

    for i = 1, 3 do
        local node = Node:new(timetable.rootNode, love.math.random(30, 150), i)
        table.insert(timetable.rootNode.children, node)
    end

    local node = Node:new(timetable.rootNode.children[1], love.math.random(30, 150), 1)
    table.insert(timetable.rootNode.children[1].children, node)

    for i = 4, 6 do
        local node = Node:new(timetable.rootNode.children[1], love.math.random(30, 150), i)
        table.insert(timetable.rootNode.children[1].children, node)
    end

    local node = Node:new(timetable.rootNode.children[2], love.math.random(30, 150), 2)
    table.insert(timetable.rootNode.children[2].children, node)
end

function timetable:enter(from)
    self.from = from
end

function timetable:update(dt)
    if controls:pressed("opentimeline") then
        gamestate.pop()
    end
end

function timetable:draw()
    if self.from then
        self.from:draw()
    end

    love.graphics.push()
    love.graphics.scale(SCALE, SCALE)

    love.graphics.draw(timetable_back)

    love.graphics.translate(16, 32)

    self.drawNodeAndChildren(self.rootNode)

    love.graphics.pop()
end

function timetable.drawNodeAndChildren(node)
    local lastOff = 0
    for _, childNode in ipairs(node.children) do
        local timelineOffset = childNode.timeline - node.timeline
        local nodeTimeOffset = childNode.nodeTime

        local offX = nodeTimeOffset*timelineSecondWidth
        local offY = timelineHeight*timelineOffset

        timetable.drawArrow(-1, 10+lastOff, offX, offY-lastOff)
        lastOff = offY-8

        love.graphics.push()
        love.graphics.translate(offX, offY)

        timetable.drawNodeAndChildren(childNode)
        love.graphics.pop()
    end
    love.graphics.draw(timetable_node, 0, 0, 0, 1, 1, 8, 8)
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
        love.graphics.draw(timetable_arrow, timetable_quad_top, x, y)
        love.graphics.draw(timetable_arrow, timetable_quad_vertical, x, y, 0, 1, h-10)
    end

    if w > 0 then
        love.graphics.draw(timetable_arrow, timetable_quad_horizontal, x+4, y+h-11, 0, w-16, 1)
    end


    love.graphics.draw(timetable_arrow, timetable_quad_end, x+w-12, y+h-16)
end