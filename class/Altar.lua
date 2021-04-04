local Entity = require "class.Entity"
local Altar = class("Door", Entity)

local spriteDrawable = require "class.drawables.sprite"

Altar.drawable = {
    img = love.graphics.newImage("img/altar.png"),
}

function Altar:initialize(level, x, y)
    self.level = level

    self.x = x
    self.y = y-64
end

function Altar:draw()
    spriteDrawable:draw(self)
end

return Altar
