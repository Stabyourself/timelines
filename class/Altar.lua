local Sprite = require "class.drawables.Sprite"
local Entity = require "class.Entity"
local Altar = class("Altar", Entity)

local img = love.graphics.newImage("img/altar.png")
local imgInactive = love.graphics.newImage("img/altar_inactive.png")

Altar.drawable = Sprite:new(function(self)
    if not self.used then
        return img
    else
        return imgInactive
    end
end)

Altar.drawable.x = 0
Altar.drawable.y = -1

Altar.particleClass = require "class.MagicParticle"
Altar.particleX = 10
Altar.particleY = 33
Altar.particleW = 10
Altar.particleH = 10

Altar.platform = true
Altar.used = false

combineArrays(Altar.serializeTable, {
    "used",
})

function Altar:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 32, 63)

    self.particleTimes = {0.1, 0.3, 0.3, 0.5}
    self.particleTimer = 0
end

function Altar:postAdd()
    if self.used then
        self:use()
    end
end

function Altar:use()
    self.used = true
    self.particleTimes = nil
    self:refreshECS()
end

return Altar
