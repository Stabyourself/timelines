local BackgroundSlice = class("BackgroundSlice")

function BackgroundSlice:initialize(img, depth)
    self.img = img
    self.depth = depth*.1

    self.x = 0

    self.w = img:getWidth()
    self.h = img:getHeight()

    self:updateQuad()
end

function BackgroundSlice:updateQuad()
    self.quad = love.graphics.newQuad(self.x*self.depth, 0, WIDTH, self.h+HEIGHT, self.w, self.h)
end

function BackgroundSlice:draw(y)
    love.graphics.draw(self.img, self.quad, 0, y)
end

function BackgroundSlice:moveTo(x)
    self.x = x
    self:updateQuad()
end

return BackgroundSlice
