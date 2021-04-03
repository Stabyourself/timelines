local Entity = class("Entity")

local DEFAULT_GRAVITY = 200

function Entity:filter(other)
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

function Entity:queueRemove()
    self.removeMe = true
end

function Entity:remove()
    self.level.world:remove(self)
    self.level.ecs:remove(self)
end

return Entity