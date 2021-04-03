local game = {}

local Level = require "class.Level"

function game:init()
    self.level = Level:new("levels/level1.lua")
end

function game:enter(previous)

end

function game:update(dt)

    self.level:update(dt)
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
