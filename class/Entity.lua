local Entity = class("Entity")

Entity.serializeTable = {
    "x",
    "y",
    "w",
    "h",
    "vx",
    "vy",
    "active",
    "physics"
}

function Entity:filter(other)
    if other.properties and other.properties.platform and self.y + self.h > other.y then
        return false
    end

    if tostring(other.class) == "class Altar" then
        return false
    end

    return "slide"
end

function Entity:initialize(level, x, y, w, h, physics)
    self.level = level
    self.world = level.world
    self.x = x
    self.y = y
    self.w = w
    self.h = h

    self.vx = 0
    self.vy = 0

    self.physics = physics ~= false

    if self.physics then
        self.world:add(self, x, y, w, h)
    end

    self.active = true

    self.level.ecs:addEntity(self)
end

function Entity:toState()
    local out = {
        class = self.class
    }

    for _, key in ipairs(self.serializeTable) do
        out[key] = self[key]
    end

    return out
end

function Entity.fromState(level, state)
    local entity = state.class:new(level, state.x, state.y, state.w, state.h, state.physics)

    for k, v in pairs(state) do
        entity[k] = v
    end

    return entity
end

function Entity:draw()
    self.drawable:draw(self)
end

function Entity:queueRemove()
    self.removeMe = true
end

function Entity:remove()
    self.level.world:remove(self)
    self.level.ecs:remove(self)
end

return Entity
