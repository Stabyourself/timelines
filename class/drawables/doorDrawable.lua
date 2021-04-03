_Sprite = require "class.drawables._Sprite"

local keyDrawable = _Sprite:new()
keyDrawable.img = love.graphics.newImage("img/door.png")

return keyDrawable
