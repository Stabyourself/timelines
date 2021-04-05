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
    print("=========", state.class)
    local entity = state.class:new(level, state.x, state.y, state.w, state.h, state.physics)

    for k, v in pairs(state) do
        entity[k] = v
        print(k, v)
    end

    return entity
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