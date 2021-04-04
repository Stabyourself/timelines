local Entity = require "class.Entity"
local Key = class("Key", Entity)

local spriteDrawable = require "class.drawables.sprite"
local img = love.graphics.newImage("img/key.png")

function Key:filter(other)
    if other.properties and other.properties.platform and self.y + self.h > other.y then
        return false
    end

    if other.class and other.class.name == "Player" then
        return "cross"
    end

    return "slide"
end

Key.bobDistance = 2
Key.bobTime = 3

Key.wobbleTime = 1.5
Key.wobbleDistance = 0.1

function Key:initialize(level, x, y, transcendent)
    self.level = level
    Entity.initialize(self, level, x+1, y-12, 15, 6)
    self.transcendent = transcendent

    self.goalX = self.x
    self.goalY = self.y

    self.bobStart = self.y
    self.bobTimer = 0

    self.wobbleTimer = 0

    self.drawable = {
        img = img,
        x = 7.5,
        y = 3,
        ox = 7.5,
        oy = 3
    }
end

function Key:draw()
    if self.transcendent then
        love.graphics.setColor(1, 0, 1)
    end

    spriteDrawable:draw(self)

    love.graphics.setColor(1, 1, 1)
end

return Key
