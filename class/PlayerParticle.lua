local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local PlayerParticle = class("PlayerParticle", Entity)
local anim8 = require "lib.anim8"

PlayerParticle.drawable = Sprite:new(love.graphics.newImage("img/door.png"))

PlayerParticle.noState = true


local topImg = love.graphics.newImage("img/player_top.png")
local grid = anim8.newGrid(16, 16, topImg:getWidth(), topImg:getHeight())

local shardImg = love.graphics.newImage("img/player_shards.png")
local shardQuads = {}
for x = 1, 4 do
    table.insert(shardQuads, love.graphics.newQuad((x-1)*8, 0, 8, 8, shardImg:getWidth(), shardImg:getHeight()))
end

function PlayerParticle:initialize(level, x, y, t, shardI, angle)
    local destX, destY = x, y
    local dist = love.math.random(40, 50)
    local angle = angle or love.math.random()*math.pi*2

    local offX = math.cos(angle)*dist
    local offY = math.sin(angle)*dist

    self.a = 0

    if t == "top" then
        Entity.initialize(self, level, x+offX, y+offY, 12, 4, false)

        if shardI == 1 then
            self.animation = anim8.newAnimation(grid("1-6", 1), 0.1)
        else
            self.animation = anim8.newAnimation(grid("6-1", 1), 0.1)
        end

        self.animation:gotoFrame(3)

        self.duration = 1.5

        self.animating = true
    elseif t == "shard" then
        Entity.initialize(self, level, x+offX, y+offY, 4, 4, false)

        self.quad = shardQuads[shardI]

        self.duration = 1
    end

    timer.tween(self.duration, self, {x = destX, y = destY, a = 1}, 'in-out-quad', function() self.animating = false end)
end

function PlayerParticle:update(dt)
    if self.animating or (self.animation and self.animation.position ~= 1) then
        self.animation:update(dt)
    end
end

function PlayerParticle:draw()
    love.graphics.setColor(1, 1, 1, self.a)
    if self.animation then
        self.animation:draw(topImg, self.x+6, self.y+2, 0, 1, 1, 8, 8)
    else
        love.graphics.draw(shardImg, self.quad, self.x+2, self.y+2, 0, 1, 1, 4, 4)
    end
    love.graphics.setColor(1, 1, 1)
end

return PlayerParticle
