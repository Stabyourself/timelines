local Entity = require "class.Entity"
local Trigger = class("Trigger", Entity)

local img = love.graphics.newImage("img/scale.png")
local quads = {
    love.graphics.newQuad(0, 0, 24, 16, 72, 16),
    love.graphics.newQuad(24, 0, 24, 16, 72, 16),
    love.graphics.newQuad(48, 0, 24, 16, 72, 16),
}

Trigger.platform = true
Trigger.used = false

combineArrays(Entity.serializeTable, {
    "target",
    "used"
})

function Trigger:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 24, 10)

    self.particleTimes = {0.1, 0.3, 0.3, 0.5}
    self.particleTimer = 0

    self.quad = quads[1]
end

function Trigger:postAdd()
    if self.used then
        self.quad = quads[3]
    end

    Entity.postAdd(self)
end

function Trigger:update(dt)
    if not self.used then
        local items, len = self.level.world:queryRect(self.x, self.y-5, self.w, 1, function(item)
            return item.class and item.class.name == "Player" and item.onGround
        end)

        if len > 0 then
            self.quad = quads[2]
        else
            self.quad = quads[1]
        end
    end
end

function Trigger:push()
    self.used = true
    self.quad = quads[3]

    local door = self.level:getEntityById(self.target)

    if door then
        door:open()
    end
end

function Trigger:draw()
    love.graphics.draw(img, self.quad, self.x, self.y-6)
end

return Trigger
