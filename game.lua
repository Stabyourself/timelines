game = gamestate.new()

local Level = require "class.Level"

function game:init()
    self.activeNode = timeline.rootNode
    self.level = Level:new(self, "levels/level1.lua")
end

function game:enter(previous)

end

function game:update(dt)
    self.level:update(dt)

    if controls:pressed("opentimeline") then
        gamestate.push(timeline)
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

return game
