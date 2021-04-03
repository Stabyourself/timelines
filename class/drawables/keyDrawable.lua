_Sprite = require "class.drawables._Sprite"

local keyDrawable = class("keyDrawable", _Sprite)

keyDrawable.img = love.graphics.newImage("img/key.png")

function keyDrawable:draw(x, y, r)
    _Sprite.draw(self, x, y, r, 1, 1, 7.5, 3)
end

return keyDrawable:new()
