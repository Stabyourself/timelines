_Sprite = require "class.drawables._Sprite"

local doorDrawable = _Sprite:new()
doorDrawable.img = love.graphics.newImage("img/door.png")

return doorDrawable
