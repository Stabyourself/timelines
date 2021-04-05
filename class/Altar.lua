local Sprite = require "class.drawables.Sprite"
local Entity = require "class.Entity"
local Altar = class("Altar", Entity)

Altar.drawable = Sprite:new(love.graphics.newImage("img/altar.png"))

combineArrays(Altar.serializeTable, {
    "used",
})

function Altar:initialize(level, x, y)
    self.used = false

    Entity.initialize(self, level, x, y, 32, 64)
end

return Altar
