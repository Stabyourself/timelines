local Node = require "class.Node"

timeline = gamestate.new()

timeline_back = love.graphics.newImage("img/timeline_back.png")

function timeline:init()
    timeline.nodes = {}

    timeline.rootNode = Node:new()

    table.insert(timeline.nodes, timeline.rootNode)
end

function timeline:enter(from)
    self.from = from
end

function timeline:draw()
    self.from:draw()

    love.graphics.push()
    love.graphics.scale(SCALE, SCALE)

    love.graphics.draw(timeline_back)

    love.graphics.pop()
end
