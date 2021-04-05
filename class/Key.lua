local Entity = require "class.Entity"
local Key = class("Key", Entity)

local spriteDrawable = require "class.drawables.sprite"

Key.drawable = {
    img = love.graphics.newImage("img/key.png"),
    x = 7,
    y = 4,
    ox = 7,
    oy = 4
}

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

combineArrays(Key.serializeTable, {
    "goalX",
    "goalY",
    "bobStart",
    "bobTimer",
    "wobbleTimer",
    "transcendent",
})

function Key:initialize(level, x, y, transcendent)
    Entity.initialize(self, level, x, y, 14, 8)
    self.transcendent = transcendent

    self.goalX = self.x
    self.goalY = self.y

    self.bobStart = self.y
    self.bobTimer = 0

    self.wobbleTimer = 0
end

function Key:draw()
    if self.transcendent then
        love.graphics.setColor(1, 0, 1)
    end

    spriteDrawable:draw(self)

    love.graphics.setColor(1, 1, 1)
end

return Key
