local Entity = require "class.Entity"
local Boss = class("Boss", Entity)
local anim8 = require "lib.anim8"

Boss.doesntCollideWith = {"Sand", "Arrow", "PlayerParticle"}


combineArrays(Boss.serializeTable, {

})

local imgNormal = love.graphics.newImage("img/HAMMER.png")
local imgHat = love.graphics.newImage("img/HAMMER_hat.png")

local grid = anim8.newGrid(48, 48, imgNormal:getWidth(), imgNormal:getHeight())
local idleAnimation = anim8.newAnimation(grid(1, 1), math.huge)

local walkAnimation = anim8.newAnimation(grid("2-5", 1), 0.15)

local chargeAnimation = anim8.newAnimation(grid("6-7", 1), 0.2, function(anim)
    anim.position = 3
    anim:pauseAtEnd()
end)

local hitAnimation = anim8.newAnimation(grid("8-9", 1), 0.2, function(anim)
    anim.position = 5
    anim:pauseAtEnd()
end)

local speed = 80
local jumpForce = 220
local jumpTime = 2.5

Boss.gravity = 350

function Boss:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 24, 24)

    self.state = "chasing"

    self.jumpTimer = 0
    self.animation = idleAnimation

    self.stylish = false
    self.dir = -1
end

function Boss:update(dt)
    -- behavior
    if math.abs((self.x+12)-(self.level.player.x+6)) < 100 then
        self.state = "chasing"
        game.bossActive = true
        self.animation = walkAnimation
    else
        self.state = "idle"
        self.vx = 0
        self.animation = idleAnimation
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
            self.dir = -1
        elseif self.x < self.level.player.x-12-chaseDistance then
            self.vx = speed
            self.dir = 1
        else
            self.animation = idleAnimation
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

    -- animation
    if self.jumping then
        if self.vy < 0 then
            self.animation = chargeAnimation
        else
            self.animation = hitAnimation
        end
    end

    self.animation:update(dt)
end

function Boss:hurt()
    if not self.stylish then
        game:hurtBoss()
        self.stylish = true
    end
end

function Boss:jump()
    self.jumping = true
    self.vy = -jumpForce
    self.animation = chargeAnimation

    chargeAnimation:gotoFrame(1)
    chargeAnimation:resume()
    hitAnimation:gotoFrame(1)
    hitAnimation:resume()
end

function Boss:grounded()
    self.animation = idleAnimation
    self.jumping = false
end

function Boss:draw()
    local img = imgNormal

    if self.stylish then
        img = imgHat
    end

    self.animation:draw(img, self.x+12, self.y, 0, -self.dir, 1, 22, 23)
end

function Boss:collide(other, nx, ny)
    if other.class and other.class.name == "Player" then
        if ny < 1 then
            other:die()
        end
    end
end

return Boss
