local Color3 = require "lib.Color3"
endScreen = gamestate.new()

local titleImg = love.graphics.newImage("img/title.png")

local textForeground = Color3.fromOldRGB(168, 150, 142)
local textBackground = Color3.fromOldRGB(93, 70, 98)

function endScreen:init()

end

function endScreen:enter(previous)

end

function endScreen:update(dt)

end

function endScreen:draw()
    love.graphics.setColor(134/255, 102/255, 105/255)
    love.graphics.rectangle("fill", 0, 0, WIDTH, HEIGHT)

    local r, g, b = textBackground:rgb()
    love.graphics.setColor(textForeground:rgb())

    printfShadow(r, g, b, "Great job!\n\nYou beat the evil hammer guy! Good job.\n\n\n\n\n\n\n(A demo of) A game by Maurice and Hans", 0, 51, WIDTH, "center")

    love.graphics.draw(titleImg, (WIDTH-titleImg:getWidth())*.5, 130)
end
