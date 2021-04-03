local Entity = require "class.Entity"
local Key = class("Key", Entity)
local keyDrawable = require "class.drawables.keyDrawable"

function Key:initialize(level, x, y)
    self.level = level
    Entity.initialize(self, level, x+1, y-12, 15, 6)

    self.goalX = self.x
    self.goalY = self.y

    self.bobStart = self.y
    self.bobDistance = 2
    self.bobTime = 3
    self.bobTimer = 0

    self.wobbleTime = 1.5
    self.wobbleDistance = 0.1
    self.wobbleTimer = 0
end

function Key:draw()
    keyDrawable:draw(self.x, self.y, self.r)
end

return Key
