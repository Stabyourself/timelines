local Entity = class("Entity")

Entity.serializeTable = {
    "x",
    "y",
    "w",
    "h",
    "vx",
    "vy",
    "active",
    "physics",
    "onGround",
    "id"
}

function Entity:filter(other)
    if (other.platform or (other.properties and other.properties.platform)) and self.y + self.h > other.y then
        return false
    end

    if other.class and self.doesntCollideWith then
        if intablei(self.doesntCollideWith, other.class.name) then
            return false
        end
    end

    return self.defaultFilter or "slide"
end

function Entity:initialize(level, x, y, w, h, physics)
    self.level = level
    self.x = x
    self.y = y
    self.w = w
    self.h = h

    self.vx = 0
    self.vy = 0

    self.physics = physics ~= false

    self.level.ecs:addEntity(self)

    self.active = true
    self.onGround = true
end

function Entity:postAdd()
    if self.physics then
        self.level.world:add(self, self.x, self.y, self.w, self.h)
    end
end

function Entity:toState()
    local out = {
        class = self.class
    }

    for _, key in ipairs(self.serializeTable) do
        if type(self[key]) == "table" then -- only 1 level of copying
            local t = {}

            for k, v in pairs(self[key]) do
                t[k] = v
            end

            out[key] = t
        else
            out[key] = self[key]
        end
    end

    return out
end

function Entity.fromState(level, state)
    local entity = state.class:new(level, state.x, state.y)

    for k, v in pairs(state) do
        entity[k] = v
    end

    return entity
end

function Entity:draw()
    if self.drawable then
        self.drawable:draw(self)
    end
end

function Entity:queueRemove()
    self.active = false
    self.removeMe = true
end

function Entity:remove()
    if self.level.world:hasItem(self) then
        self.level.world:remove(self)
    end

    self.level.ecs:remove(self)
end

function Entity:refreshECS()
    self.level.ecs:add(self)
end

function Entity:removeFromWorld()
    if self.level.world:hasItem(self) then
        self.level.world:remove(self)
    end
end

function Entity:removeFromECS()
    self.level.ecs:remove(self)
end

return Entity
