local Sprite = class("Sprite")

function Sprite:initialize(img)
    self.img = img

    self.x = 0
    self.y = 0
    self.r = 0
    self.sx = 1
    self.sy = 1
    self.ox = 0
    self.oy = 0
end

function Sprite:draw(e)
    local img = self.img

    if type(img) == "function" then
        img = img(e)
    end

    love.graphics.draw(img, e.x+self.x, e.y+self.y, e.r, self.sx, self.sy, self.ox, self.oy)
end

return Sprite
