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

combineArrays(Altar.serializeTable, {
    "used",
})

function Altar:initialize(level, x, y)
    self.used = false

    Entity.initialize(self, level, x, y, 32, 64)
end

return Altar
