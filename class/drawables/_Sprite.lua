local _Sprite = class("Sprite")

function _Sprite:draw(x, y, r, sx, sy, ox, oy)
    love.graphics.draw(self.img, x, y, r, sx, sy, ox, oy)
end

return _Sprite
