local Color3 = require "lib.Color3"
local Button = class("Button")

local sides = love.graphics.newImage("img/button_sides.png")
local middle = love.graphics.newImage("img/button_middle.png")
middle:setWrap("repeat")

local leftQuad = love.graphics.newQuad(0, 0, 3, 20, sides:getWidth(), sides:getHeight())
local middleQuad = love.graphics.newQuad(0, 0, middle:getWidth(), 20, middle:getWidth(), middle:getHeight())
local rightQuad = love.graphics.newQuad(sides:getWidth()-4, 0, 4, 20, sides:getWidth(), sides:getHeight())

local activeColor = Color3.fromOldRGB(227, 204, 183)
local activeColorShadow = Color3.fromOldRGB(42, 41, 63)

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
    love.graphics.draw(sides, leftQuad, self.x, self.y)

    middleQuad:setViewport(0, 0, self.w-7, 20, middle:getWidth(), middle:getHeight())
    love.graphics.draw(middle, middleQuad, self.x+3, self.y)

    love.graphics.draw(sides, rightQuad, self.x+self.w-4, self.y)

    love.graphics.setColor(activeColorShadow:rgb())
    love.graphics.printf(self.text, self.x, self.y+6, self.w, "center")

    love.graphics.setColor(activeColor:rgb())
    love.graphics.printf(self.text, self.x, self.y+5, self.w, "center")

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