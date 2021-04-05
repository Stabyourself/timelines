local Entity = require "class.Entity"
local Altar = class("Altar", Entity)

local spriteDrawable = require "class.drawables.sprite"

Altar.drawable = {
    img = love.graphics.newImage("img/altar.png"),
}

combineArrays(Altar.serializeTable, {
    "used",
})

function Altar:initialize(level, x, y)
    self.used = false

    Entity.initialize(self, level, x, y, 32, 64)
end

function Altar:draw()
    spriteDrawable:draw(self)
end

return Altar
