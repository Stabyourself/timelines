local Node = require "class.Node"
game = gamestate.new()

local Level = require "class.Level"

function game:init()
    self.activeNode = timetable.rootNode
    self.level = Level:new(self, "levels/level1.lua")
end

function game:enter(previous)

end

function game:update(dt)
    self.level:update(dt)

    if controls:pressed("opentimeline") then
        gamestate.push(timetable)
    end
end

function game:draw()
    self.level:draw()

    love.graphics.push()
    love.graphics.scale(SCALE, SCALE)

    -- UI!
    love.graphics.print("Keys: " .. self.level.player.keyCount)
    love.graphics.pop()
end

function game:mousepressed(x, y, button)
    self.level:mousepressed(x, y)
end

function game:makeNode()
    local timeline = self.activeNode.timeline

    if #self.activeNode.children > 0 then
        timeline = timetable.timelines+1
        timetable.timelines = timetable.timelines + 1
    end

    local node = Node:new(self.activeNode, love.math.random(30, 150), timeline)
    table.insert(self.activeNode.children, node)

    self.activeNode = node
end