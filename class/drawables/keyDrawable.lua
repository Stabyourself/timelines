_Sprite = require "class.drawables._Sprite"

local keyDrawable = _Sprite:new()
keyDrawable.img = love.graphics.newImage("img/key.png")

return keyDrawable
