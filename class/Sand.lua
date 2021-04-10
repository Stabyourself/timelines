local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Sand = class("Sand", Entity)

combineArrays(Sand.serializeTable, {
})

Sand.colors = {
    {1  , 0.98, 0.56},
    {1  , 0.82, 0.22},
    {1  , 0.54, 0   },
}

Sand.gravity = 300
Sand.dampening = 0.5

Sand.variations = {
    -- graphic W, graphic H, physics W, physics H
    {2, 2, 2, 1},
    {2, 2, 2, 2},
    {2, 1, 2, 1},
}

function Sand:filter(other)
    if other.class then
        return false
    end

    if (other.platform or (other.properties and other.properties.platform)) and self.y + self.h > other.y then
        return false
    end

    if (other.properties and other.properties.spike) then
        return false
    end

    return "bounce"
end

function Sand:initialize(level, x, y)
    self.variation = self.variations[love.math.random(#self.variations)]

    Entity.initialize(self, level, x, y, self.variation[3], self.variation[4])

    self.color = self.colors[love.math.random(#self.colors)]
end

function Sand:draw()
    love.graphics.setColor(self.color)

    love.graphics.rectangle("fill", self.x, self.y, self.variation[1], self.variation[2])

    love.graphics.setColor(1, 1, 1)
end

function Sand:collide(other, nx, ny)
    if nx ~= 0 then
        self.vx = -self.vx*self.dampening
    end

    if ny ~= 0 then
        self.vy = -self.vy*self.dampening

        if math.abs(self.vx) < 2 and math.abs(self.vy) < 2 then
            self.vx = 0
            self.vy = 0

            self.worldRemove = true
        end
    end

    self.vx = self.vx * self.dampening
end

return Sand
