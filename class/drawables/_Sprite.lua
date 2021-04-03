local _Sprite = class("Sprite")

function _Sprite:draw(x, y)
    love.graphics.draw(self.img, x, y)
end

return _Sprite
