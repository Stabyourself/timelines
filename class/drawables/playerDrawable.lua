_Sprite = require "class.drawables._Sprite"

local playerDrawable = _Sprite:new()
playerDrawable.img = love.graphics.newImage("img/player.png")
playerDrawable.offX = -1
playerDrawable.offY = 0

return playerDrawable
