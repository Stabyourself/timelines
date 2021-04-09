local Sprite = require "class.drawables.Sprite"
local Entity = require "class.Entity"
local Shrine = class("Shrine", Entity)

local img = love.graphics.newImage("img/shrine.png")
local imgInactive = love.graphics.newImage("img/shrine_inactive.png")

Shrine.drawable = Sprite:new(function(self)
    if not self.used then
        return img
    else
        return imgInactive
    end
end)

Shrine.drawable.x = 0
Shrine.drawable.y = -1

Shrine.particleClass = require "class.MagicParticle"
Shrine.particleX = 10
Shrine.particleY = 33
Shrine.particleW = 10
Shrine.particleH = 10

Shrine.platform = true
Shrine.used = false

combineArrays(Shrine.serializeTable, {
    "used",
})

function Shrine:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 32, 63)

    self.particleTimes = {0.1, 0.3, 0.3, 0.5}
    self.particleTimer = 0
end

function Shrine:postAdd()
    if self.used then
        self:use()
    end
end

function Shrine:use()
    self.used = true
    self.particleTimes = nil
    self:refreshECS()
end

return Shrine
