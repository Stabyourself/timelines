local BackgroundSlice = require "class.BackgroundSlice"
local Background = class("Background")

function Background:initialize(slices, path)
    self.slices = {}
    self.y = 0

    for i, slice in ipairs(slices) do
        local img = love.graphics.newImage(path .. i .. ".png")
        img:setWrap("repeat", "repeat")
        table.insert(self.slices, BackgroundSlice:new(img, i))
    end
end

function Background:update(dt)
    self.y = self.y-self.y*3*dt
end

function Background:draw()
    local y = self.y

    for _, slice in ipairs(self.slices) do
        slice:draw(y)

        y = y + slice.h
    end
end

function Background:moveTo(x)
    for _, slice in ipairs(self.slices) do
        slice:moveTo(x)
    end
end

function Background:moveY(y)
    self.y = math.max(-HEIGHT, self.y - y)
end

return Background
