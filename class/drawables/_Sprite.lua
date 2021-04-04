local _Sprite = class("Sprite")

_Sprite.offX = 0
_Sprite.offY = 0

function _Sprite:draw(x, y, r, sx, sy, ox, oy)
    love.graphics.draw(self.img, x+self.offX, y+self.offY, r, sx, sy, ox, oy)
end

return _Sprite
