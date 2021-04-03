local Entity = require "class.Entity"
local Key = class("Key", Entity)
local keyDrawable = require "class.drawables.keyDrawable"

function Key:initialize(level, x, y)
    self.level = level
    Entity.initialize(self, level, x+1, y-12, 15, 6)
end

function Key:draw()
    keyDrawable:draw(self.x, self.y)
end

return Key
