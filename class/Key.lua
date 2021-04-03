local Entity = require "class.Entity"
local Key = class("Key", Entity)
local keyDrawable = require "class.drawables.keyDrawable"

function Key:filter(other)
    if other.properties and other.properties.platform and self.y + self.h > other.y then
        return false
    end

    if other.class and other.class.name == "Player" then
        return "cross"
    end

    return "slide"
end


function Key:initialize(level, x, y, transcendent)
    self.level = level
    Entity.initialize(self, level, x+1, y-12, 15, 6)
    self.transcendent = transcendent

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
    if self.transcendent then
        love.graphics.setColor(1, 0, 1)
    end

    keyDrawable:draw(self.x+7.5, self.y+3, self.r)

    love.graphics.setColor(1, 1, 1)
end

return Key
