local Button = class("Button")

local back = love.graphics.newImage("img/button_back.png")

function Button:initialize(x, y, w, h, text, func)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    self.text = text
    self.func = func

    self.active = true
end

function Button:draw()
    love.graphics.draw(back, self.x, self.y)

    if self.active then
        love.graphics.setColor(1, 1, 1)
    else
        love.graphics.setColor(0.5, 0.5, 0.5)
    end

    love.graphics.printf(self.text, self.x, self.y+2, self.w, "center")

    love.graphics.setColor(1, 1, 1)
end

function Button:mousepressed(x, y, button)
    if self.active then
        if x >= self.x and x < self.x+self.w and y >= self.y and y < self.y+self.h then
            self.func()
        end
    end
end

return Button