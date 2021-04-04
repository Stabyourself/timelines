local _Sprite = class("Sprite")

function _Sprite:initialize(entity)
    self.entity = entity
end

function _Sprite:draw(e)
    local img = e.drawable.img
    local x = e.x+(e.drawable.x or 0)
    local y = e.y+(e.drawable.y or 0)
    local r = e.r or 0
    local sx = e.drawable.sx or 1
    local sy = e.drawable.sy or 1
    local ox = e.drawable.ox or 0
    local oy = e.drawable.oy or 0

    love.graphics.draw(img, x, y, r, sx, sy, ox, oy)
end

return _Sprite:new()
