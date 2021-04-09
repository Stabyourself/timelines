local Color3 = require "lib.Color3"
local Button = class("Button")

local sides = love.graphics.newImage("img/button_sides.png")
local middle = love.graphics.newImage("img/button_middle.png")
middle:setWrap("repeat")

local leftQuad = {}
local middleQuad = {}
local rightQuad = {}
for i, state in ipairs{"regular", "active", "disabled"} do
    leftQuad[state] = love.graphics.newQuad(0, (i-1)*20, 3, 20, sides:getWidth(), sides:getHeight())
    middleQuad[state] = love.graphics.newQuad(0, (i-1)*20, middle:getWidth(), 20, middle:getWidth(), middle:getHeight())
    rightQuad[state] = love.graphics.newQuad(sides:getWidth()-4, (i-1)*20, 4, 20, sides:getWidth(), sides:getHeight())
end


local activeColor = Color3.fromOldRGB(227, 204, 183)
local shadowColor = Color3.fromOldRGB(42, 41, 63)

local hoverColor = Color3.fromOldRGB(255, 255, 255)
local disabledColor = Color3.fromOldRGB(92, 62, 66)

function Button:initialize(parent, x, y, w, h, text, func)
    self.parent = parent
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    self.text = text
    self.func = func

    self.clicking = false
    self.disabled = false
end

function Button:draw()
    -- BUTTON
    local state = "regular"

    if self.clicking then
        state = "active"
    elseif self.disabled then
        state = "disabled"
    end

    love.graphics.draw(sides, leftQuad[state], self.x, self.y)

    local _, y = middleQuad[state]:getViewport()
    middleQuad[state]:setViewport(0, y, self.w-7, 20, middle:getWidth(), middle:getHeight())
    love.graphics.draw(middle, middleQuad[state], self.x+3, self.y)

    love.graphics.draw(sides, rightQuad[state], self.x+self.w-4, self.y)



    -- TEXT
    love.graphics.setColor(shadowColor:rgb())
    love.graphics.printf(self.text, self.x, self.y+6, self.w, "center")

    love.graphics.setColor(activeColor:rgb())
    if self.disabled then
        love.graphics.setColor(disabledColor:rgb())
    elseif self:getHover(self.parent:getMousePosition()) then
        love.graphics.setColor(hoverColor:rgb())
    end

    love.graphics.printf(self.text, self.x, self.y+5, self.w, "center")



    love.graphics.setColor(1, 1, 1)
end

function Button:getHover(x, y)
    if x >= self.x and x < self.x+self.w and y >= self.y and y < self.y+self.h then
        return true
    end

    return false
end

function Button:mousepressed(x, y, button)
    if not self.disabled and self:getHover(x, y) then
        self.clicking = true
    end
end

function Button:mousereleased(x, y, button)
    if not self.disabled and self.clicking and self:getHover(x, y) then
        self.func()
    end
    self.clicking = false
end

return Button