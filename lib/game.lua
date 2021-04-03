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
end

return game
