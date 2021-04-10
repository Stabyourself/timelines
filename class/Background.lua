local BackgroundSlice = require "class.BackgroundSlice"
local Background = class("Background")

function Background:initialize(slices, path)
    self.slices = {}

    for i, slice in ipairs(slices) do
        local img = love.graphics.newImage(path .. i .. ".png")
        img:setWrap("repeat")
        table.insert(self.slices, BackgroundSlice:new(img, i))
    end
end

function Background:draw()
    local y = 0

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

return Background
