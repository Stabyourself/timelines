local anim8 = require 'lib.anim8'
local AnimationMachine = require "class.drawables.AnimationMachine"
local Sand = require "class.Sand"
local PlayerParticle = require "class.PlayerParticle"

local Entity = require "class.Entity"

local useBubble = love.graphics.newImage("img/use_bubble.png")

local Player = class("Player", Entity)

Player.doesntCollideWith = {"Sand"}

function Player:filter(other)
    if other.class and (other.class.name == "Key" or other.class.name == "SandUpgrade") then
        return "cross"
    end

    if other.class and other.class.name == "Door" then
        if self:openDoor(other, false) then
            return "cross"
        end
    end

    return Entity.filter(self, other)
end

Player.runAccel = 500
Player.brakeAccel = 800
Player.runAccel = 500
Player.maxSpeed = 100

Player.jumpSpeed = 170
Player.totalAirJumps = 1
Player.coyoteTime = 0.08

Player.gravity = 950
Player.jumpGravity = 480
Player.maxYSpeed = 400



Player.entitySpawnTimes = {0.01, 0.03, 0.03, 0.05, 0.05, 0.1}
Player.entitySpawnFunction = function(self)
    local x = self.x + 5 - self.drawable.dir*6
    local y = self.y + 10

    local vx = self.vx * 0.5 - self.drawable.dir*20 + love.math.random(-5, 5)
    local vy = self.vy * 0.5 + love.math.random(-5, 5)

    return x, y, vx, vy
end



combineArrays(Player.serializeTable, {
    "airJumpsLeft",
    "keyCount",
    "animationState",
    "coyoteTimer"
})

local playerImg = love.graphics.newImage("img/player.png")
local grid = anim8.newGrid(16, 16, playerImg:getWidth(), playerImg:getHeight())

Player.animations = {
    [1] = {},
    [-1] = {},
}

for i, dir in ipairs({1, -1}) do
    Player.animations[dir] = {
        idle = anim8.newAnimation(grid(1, i), math.huge),
        fall = anim8.newAnimation(grid(3, i), math.huge),
        jump = anim8.newAnimation(grid("2-3", i), {0.15, math.huge}),
        doublejump = anim8.newAnimation(grid("4-5", i), {0.15, math.huge}),
        run = anim8.newAnimation(grid("6-9", i), 0.08),
        die = anim8.newAnimation(grid(10, i), math.huge),
    }
end
-- TODO: need to clone this somehow; animations should be instanced

local glowImg = love.graphics.newImage("img/player_glow.png")

local sandImg = love.graphics.newImage("img/player_sand.png")
local sandQuads = {}

for i = 1, 9 do
    table.insert(sandQuads, love.graphics.newQuad((i-1)*16, 0, 16, 16, sandImg:getWidth(), sandImg:getHeight()))
end

local sandOffsets = {
    -- jump = {
    --     [1] = {0, 1}
    -- },
    -- doublejump = {
    --     [1] = {0, 1}
    -- },
}

function Player:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 12, 14)

    self.airJumpsLeft = self.totalAirJumps
    self.keyCount = 0

    self.animationState = "idle"
    self.coyoteTimer = 0

    self.sand = game.metaState.sand


    self.drawable = AnimationMachine:new(playerImg, Player.animations)

    self.drawable.x = 6
    self.drawable.oy = 0
    self.drawable.ox = 8

    self.entitySpawnTimer = 0
    self.entitySpawnEntity = nil

    self.visible = true
    self.glowing = 0
    self.controlsEnabled = true
end

function Player:nearShrine()
    if self.onGround then
        local items, len = self.level.world:queryRect(self.x, self.y, self.w, self.h, function(item)
            return item.class and item.class.name == "Shrine"
        end)

        if len > 0 then
            return items[1]
        end
    end

    return false
end

function Player:collide(other, nx, ny)
    if other.isInstanceOf then
        if other.class.name == "Key" then
            other:queueRemove()
            soundManager3.play("keyCollect")

            if other.meta then
                game.metaState.keyCount = game.metaState.keyCount + 1
            else
                self.keyCount = self.keyCount + 1
            end
        end

        if other.class.name == "Door" then
            if self:openDoor(other, true) then
                other:open()
            end
        end

        if other.class.name == "Arrow" then
            self:die()
        end

        if other.class.name == "Box" and ny == 0 then
            if self.vx > self.maxSpeed*.5 then
                self.vx = self.maxSpeed*.5
            elseif self.vx < -self.maxSpeed*.5 then
                self.vx = -self.maxSpeed*.5
            end
            other.vx = self.vx
            return true
        end

        if other.class.name == "SandUpgrade" then
            other:queueRemove()
            game.metaState.sand = 1
            self.sand = 1
        end

        if other.class.name == "Trigger" and not other.used and self.sand > 0 then
            other:push()
        end

    else -- world tile
        if other.properties.spike then
            local dir = other.properties.spike
            local rip = false

            if dir == "up" and ny < 0  then
                rip = true
            elseif dir == "right" and nx > 0 then
                rip = true
            elseif dir == "down" and ny > 0 then
                rip = true
            elseif dir == "left" and nx < 0 then
                rip = true
            end

            if rip then
                self:die()
                self.active = false
            end
        end
    end
end

function Player:jump()
    for _, dir in ipairs({-1, 1}) do
        self.animations[dir].jump:gotoFrame(1)
        self.animations[dir].doublejump:gotoFrame(1)
    end
end

function Player:grounded()
    self.jumping = false
    soundManager3.play("playerLand")
end

function Player:die()
    soundManager3.play("die")
    if not self.dead then
        self.dead = true
        game:die()
    end
end

function Player:openDoor(door, forReal)
    if not door.triggered then
        if game.metaState.keyCount > 0 and door.meta then -- don't open regular doors with meta keys, softlock!
            if forReal then
                game.metaState.keyCount = game.metaState.keyCount - 1
            end

            return true

        elseif self.keyCount > 0 then
            if forReal then
                self.keyCount = self.keyCount - 1
            end

            return true
        end
    end
end

function Player:draw()
    if self.visible then
        -- sand
        local ox, oy = 0,0

        local animation = self.drawable:getAnimation(self)
        if sandOffsets[self.animationState] and sandOffsets[self.animationState][animation.position] then
            ox, oy = unpack(sandOffsets[self.animationState][animation.position])
        end

        local sandQuad = math.floor((1-self.sand)*8)+1

        love.graphics.draw(sandImg, sandQuads[sandQuad], self.x+self.drawable.x+ox, self.y+self.drawable.y+oy, 0, 1, 1, self.drawable.ox, self.drawable.oy)

        Entity.draw(self)

        if self:nearShrine() then
            love.graphics.draw(useBubble, self.x-6, self.y-26)
        end
    end

    if self.glowing > 0 then
        love.graphics.setColor(1, 1, 1, self.glowing)

        love.graphics.draw(glowImg, self.x-2, self.y)

        love.graphics.setColor(1, 1, 1)
    end
end

function Player:startSpawnAnimation()
    soundManager3.play("spawn")
    self.gravity = 0
    self.y = self.y - 17
    self.onGround = false
    self.level.world:update(self, self.x, self.y)

    return self:createParticles(false)
end

function Player:startDeathAnimation()
    self.active = false
    self.controlsEnabled = false
    self.animationState = "die"
    self:removeFromECS()
end

function Player:explodeAnimation()
    soundManager3.play("explode")
    self.visible = false
    self:removeFromWorld()

    -- lots of sand
    local count = self.sand * 100

    for i = 1, count do
        local x = love.math.random(self.x, self.x+self.w)
        local y = love.math.random(self.y, self.y+self.h)

        local entity = self.level:addEntity(Sand:new(self.level, x, y))

        entity.vx = love.math.random(-50, 50)
        entity.vy = love.math.random(-50, 0)

        entity:postAdd()
    end

    return self:createParticles(true)
end

function Player:createParticles(physics)
    -- create particles
    local playerEntities = {}

    table.insert(playerEntities, self.level:addEntity(PlayerParticle:new(
        self.level,
        self.x+2,
        self.y+2,
        "shard",
        1,
        physics,
        love.math.random()*math.pi+math.pi
    )))

    table.insert(playerEntities, self.level:addEntity(PlayerParticle:new(
        self.level,
        self.x+7,
        self.y+2,
        "shard",
        2,
        physics,
        love.math.random()*math.pi+math.pi
    )))

    table.insert(playerEntities, self.level:addEntity(PlayerParticle:new(
        self.level,
        self.x+2,
        self.y+6,
        "shard",
        3,
        physics,
        love.math.random()*math.pi
    )))

    table.insert(playerEntities, self.level:addEntity(PlayerParticle:new(
        self.level,
        self.x+7,
        self.y+6,
        "shard",
        4,
        physics,
        love.math.random()*math.pi
    )))


    table.insert(playerEntities, self.level:addEntity(PlayerParticle:new(
        self.level,
        self.x,
        self.y-1,
        "top",
        1,
        physics,
        love.math.random()*math.pi+math.pi
    )))

    table.insert(playerEntities, self.level:addEntity(PlayerParticle:new(
        self.level,
        self.x,
        self.y+8,
        "top",
        2,
        physics,
        love.math.random()*math.pi
    )))

    for _, entity in ipairs(playerEntities) do
        entity:postAdd()
    end

    return playerEntities
end

function Player:startGlowing()
    soundManager3.play("finishSpawn")
    self.glowing = 1
end

function Player:stopGlowing()
    timer.tween(0.3, self, {glowing = 0}, 'linear')
end

function Player:disableControls()
    self.controlsEnabled = false
end

function Player:enableControls()
    self.controlsEnabled = true
end

return Player
