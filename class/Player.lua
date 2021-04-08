local anim8 = require 'lib.anim8'
local AnimationMachine = require "class.drawables.AnimationMachine"

local Entity = require "class.Entity"
local Key = require "class.Key"
local Door = require "class.Door"

local useBubble = love.graphics.newImage("img/use_bubble.png")

local Player = class("Player", Entity)

function Player:filter(other)
    if other.class and other.class.name == "Key" then
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

Player.sandSpawnTimes = {0.03, 0.05, 0.05, 0.1, 0.1, 0.2}
Player.sandSpawnTimer = 0

combineArrays(Player.serializeTable, {
    "airJumpsLeft",
    "keyCount",
    "animationState",
    "coyoteTimer",
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
    }
end
-- TODO: need to clone this somehow; animations should be instanced

local sandImg = love.graphics.newImage("img/player_sand.png")
local sandQuads = {}

for i = 1, 9 do
    table.insert(sandQuads, love.graphics.newQuad((i-1)*16, 0, 16, 16, sandImg:getWidth(), sandImg:getHeight()))
end

local sandOffsets = {
    jump = {
        [1] = {0, 1}
    },
    doublejump = {
        [1] = {0, 1}
    },
}

Player.drawable = AnimationMachine:new(playerImg, Player.animations)

Player.drawable.x = 6
Player.drawable.oy = 0
Player.drawable.ox = 8

function Player:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 12, 14)

    self.airJumpsLeft = self.totalAirJumps
    self.keyCount = 0

    self.animationState = "idle"
    self.coyoteTimer = 0

    self.sand = 1
end

function Player:nearAltar()
    if self.onGround then
        local items, len = self.level.world:queryRect(self.x, self.y, self.w, self.h, function(item)
            return item.class and item.class.name == "Altar"
        end)

        if len > 0 then
            return items[1]
        end
    end

    return false
end

function Player:collide(other, nx, ny)
    if other.isInstanceOf then
        if other:isInstanceOf(Key) then
            other:queueRemove()
            if other.meta then
                game.metaState.keyCount = game.metaState.keyCount + 1
            else
                self.keyCount = self.keyCount + 1
            end
        end

        if other:isInstanceOf(Door) then
            if self:openDoor(other, true) then
                other:queueRemove()
            end
        end
    else -- world tile
        if other.properties.spikes and ny < 0  then
            self:die()
            self.active = false
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
end

function Player:die()
    self:remove()
    game:die()
end

function Player:openDoor(door, forReal)
    if game.metaState.keyCount > 0 then
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

function Player:draw()
    -- sand
    local ox, oy = 0,0

    local animation = self.drawable:getAnimation(self)
    if sandOffsets[self.animationState] and sandOffsets[self.animationState][animation.position] then
        ox, oy = unpack(sandOffsets[self.animationState][animation.position])
    end

    local sandQuad = math.floor((1-self.sand)*8)+1

    love.graphics.draw(sandImg, sandQuads[sandQuad], self.x+self.drawable.x+ox, self.y+self.drawable.y+oy, 0, 1, 1, self.drawable.ox, self.drawable.oy)

    Entity.draw(self)

    if self:nearAltar() then
        love.graphics.draw(useBubble, self.x-6, self.y-26)
    end
end

return Player
