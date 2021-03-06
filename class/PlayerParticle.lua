local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local PlayerParticle = class("PlayerParticle", Entity)
local anim8 = require "lib.anim8"

PlayerParticle.drawable = Sprite:new(love.graphics.newImage("img/door.png"))

PlayerParticle.noState = true
PlayerParticle.dampening = 0.5


local topImg = love.graphics.newImage("img/player_top.png")
local topGrid = anim8.newGrid(16, 16, topImg:getWidth(), topImg:getHeight())

local shardImg = love.graphics.newImage("img/player_shards.png")
local sharedGrid = anim8.newGrid(8, 8, shardImg:getWidth(), shardImg:getHeight())

PlayerParticle.doesntCollideWith = {"PlayerParticle", "Arrow", "Sand", "Key", "Boss"}

function PlayerParticle:initialize(level, x, y, t, shardI, physics, angle)
    local destX, destY = x, y
    local dist = love.math.random(40, 50)
    local angle = angle or love.math.random()*math.pi*2


    local offX = math.cos(angle)*dist
    local offY = math.sin(angle)*dist

    self.gravity = 300
    self.a = 1

    if t == "top" then
        if physics then
            Entity.initialize(self, level, x, y, 12, 4)
        else
            self.x = x + offX
            self.y = y + offY
            self.level = level
        end

        if shardI == 1 then
            self.animation = anim8.newAnimation(topGrid("1-6", 1), 0.1)
            self.animation:gotoFrame(6)
        else
            self.animation = anim8.newAnimation(topGrid("6-1", 1), 0.1)
            self.animation:gotoFrame(5)
        end

        self.img = topImg
        self.offsets = {6, 2, 8, 8}


        self.duration = 1.2

        self.animating = true
    elseif t == "shard" then
        if physics then
            Entity.initialize(self, level, x, y, 4, 4)
        else
            self.x = x + offX
            self.y = y + offY
            self.level = level
        end

        self.animation = anim8.newAnimation(sharedGrid("1-4", shardI), 0.1)
        self.animation.timer = love.math.random()*.4
        self.animating = true
        self.img = shardImg

        self.offsets = {2, 2, 4, 4}

        self.shardImg = topImg

        self.duration = 1
    end

    if physics then -- send flying!
        self.vx = offX*3
        self.vy = offY*4

    else -- animate
        self.a = 0
        timer.tween(self.duration, self, {x = destX, y = destY, a = 1}, 'in-out-quad', function() self.animating = false end)
    end
end

function PlayerParticle:update(dt)
    if self.animating or (self.animation and self.animation.position ~= 1) then
        self.animation:update(dt)
    end
end

function PlayerParticle:draw()
    love.graphics.setColor(1, 1, 1, self.a)
    if self.animation then
        self.animation:draw(self.img, self.x+self.offsets[1], self.y+self.offsets[2], 0, 1, 1, self.offsets[3], self.offsets[4])
    else
        love.graphics.draw(shardImg, self.quad, self.x+2, self.y+2, 0, 1, 1, 4, 4)
    end
    love.graphics.setColor(1, 1, 1)
end

function PlayerParticle:collide(other, nx, ny)
    if nx ~= 0 then
        self.vx = -self.vx*self.dampening
    end

    if ny ~= 0 then
        self.vy = -self.vy*self.dampening

        if math.abs(self.vx) < 2 and math.abs(self.vy) < 2 then
            self.vx = 0
            self.vy = 0

            self.gravity = 0
            self.animating = false
        end

        if self.vy < -5 then
            soundManager3.play("glass", math.min(1, -self.vy/70))
        end
    end

    self.vx = self.vx * self.dampening
end

return PlayerParticle
