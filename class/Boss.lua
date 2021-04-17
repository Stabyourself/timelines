local Entity = require "class.Entity"
local Boss = class("Boss", Entity)
local anim8 = require "lib.anim8"

Boss.doesntCollideWith = {"Sand", "Arrow", "PlayerParticle"}


combineArrays(Boss.serializeTable, {

})

local img = love.graphics.newImage("img/HAMMER.png")
local grid = anim8.newGrid(32, 32, img:getWidth(), img:getHeight())
local idleAnimation = anim8.newAnimation(grid(1, 1), math.huge)

local speed = 80
local jumpForce = 220
local jumpTime = 2.5

Boss.gravity = 350

function Boss:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 24, 24)

    self.state = "chasing"

    self.jumpTimer = 0

    self.stylish = false

    self.animation = idleAnimation
end

function Boss:update(dt)

    if math.abs((self.x+12)-(self.level.player.x+6)) < 100 then
        self.state = "chasing"
        game.bossActive = true
    else
        self.state = "idle"
        self.vx = 0
    end

    -- state update
    local chaseDistance = 18

    if self.vy < 0 then
        chaseDistance = 0
    end

    -- movement
    if self.state == "chasing" then
        if self.x > self.level.player.x+chaseDistance then
            self.vx = -speed
        elseif self.x < self.level.player.x-12-chaseDistance then
            self.vx = speed
        else
            self.vx = 0
        end
    end

    -- jumping
    if self.state == "chasing" then
        self.jumpTimer = self.jumpTimer + dt

        if self.jumpTimer >= jumpTime then
            self.jumpTimer = self.jumpTimer - jumpTime

            self:jump()
        end
    end
end

function Boss:hurt()
    game:hurtBoss()
end

function Boss:jump()
    self.vy = -jumpForce
end

function Boss:draw()
    self.animation:draw(img, self.x, self.y, 0, 1, 1, 4, 7)
end

function Boss:collide(other, nx, ny)
    if other.class and other.class.name == "Player" then
        if ny < 1 then
            other:die()
        end
    end
end

return Boss
