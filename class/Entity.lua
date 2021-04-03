local Entity = class("Entity")

local DEFAULT_GRAVITY = 200

function Entity.filter(item, other)
    if other.properties and other.properties.platform and item.y + item.h > other.y then
        return false
    end

    if (item.mask and intablei(item.mask, other.class)) or (other.mask and intablei(other.mask, item.class)) then
        return false
    end

    return "slide"
end

function Entity:initialize(level, x, y, w, h)
    self.level = level
    self.world = level.world
    self.x = x
    self.y = y
    self.w = w
    self.h = h

    self.vx = 0
    self.vy = 0

    self.mask = {}

    self.world:add(self, x, y, w, h)
end

function Entity:draw()
    love.graphics.rectangle("line", self.x+.5, self.y+.5, self.w-1, self.h-1)
end

return Entity