local Color3 = require "lib.Color3"
local MagicParticle = class("MagicParticle")
local anim8 = require 'lib.anim8'

local img = love.graphics.newImage("img/magic.png")

local grid = anim8.newGrid(9, 9, img:getWidth(), img:getHeight())

local animation = anim8.newAnimation(grid("1-6", 1), 0.07)

local color = Color3:new(1, 0, 1)
local lightenRange = 0.7

function MagicParticle:initialize(x, y)
    self.x = x
    self.y = y

    self.removeMe = false

    self.animation = animation:clone()
    self.animation.onLoop = function() self:looped() end

    self.color = {color:lighten(love.math.random()*lightenRange*2-lightenRange)}
end

function MagicParticle:update(dt)
    self.animation:update(dt)
end

function MagicParticle:draw()
    love.graphics.setColor(unpack(self.color))
    self.animation:draw(img, self.x, self.y, 0, 1, 1, 4.5, 4.5)
    love.graphics.setColor(1, 1, 1)
end

function MagicParticle:looped()
    self.removeMe = true
end

return MagicParticle
