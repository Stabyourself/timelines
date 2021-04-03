local Entity = require "class.Entity"
local Door = class("Door", Entity)
local doorDrawable = require "class.drawables.doorDrawable"

function Door:initialize(level, x, y, transcendent)
    self.level = level
    Entity.initialize(self, level, x+4, y-32, 8, 32)
    self.transcendent = transcendent
end

function Door:draw()
    if self.transcendent then
        love.graphics.setColor(1, 0, 1)
    end

    doorDrawable:draw(self.x, self.y)

    love.graphics.setColor(1, 1, 1)
end

return Door
