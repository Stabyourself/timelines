local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Sand = class("Sand", Entity)

combineArrays(Sand.serializeTable, {
})

function Sand:filter(other)
    if other.class then
        return false
    end

    return Entity.filter(self, other)
end

function Sand:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 2, 2)

    self.gravity = 300
end

function Sand:draw()
    love.graphics.setColor(1, 0.7, 0.4)

    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)

    love.graphics.setColor(1, 1, 1)
end

function Sand:grounded()
    if self.vx == 0 then
        self.gravity = nil
        self:removeFromECS()
        self:removeFromWorld()
    end
end

return Sand
