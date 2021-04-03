local Entity = require "class.Entity"
local Door = class("Door", Entity)
local doorDrawable = require "class.drawables.doorDrawable"

function Door:initialize(level, x, y)
    self.level = level
    Entity.initialize(self, level, x+4, y-32, 8, 32)
end

function Door:draw()
    doorDrawable:draw(self.x, self.y)
end

return Door
