local anim8 = require 'lib.anim8'
local AnimationMachine = require "class.drawables.AnimationMachine"

local Entity = require "class.Entity"
local Key = require "class.Key"
local Door = require "class.Door"

local img = love.graphics.newImage("img/player.png")
local useBubble = love.graphics.newImage("img/use_bubble.png")

local Player = class("Player", Entity)

function Player:filter(other)
    if other.class and other.class.name == "Key" then
        return "cross"
    end

    if other.class and other.class.name == "Door" then
        if self.keyCount > 0 then
            return "cross"
        end
    end

    return Entity.filter(self, other)
end

Player.runAccel = 500
Player.brakeAccel = 800
Player.runAccel = 500
Player.maxSpeed = 100

Player.jumpSpeed = 210
Player.totalAirJumps = 1

Player.gravity = 800
Player.maxYSpeed = 300

combineArrays(Player.serializeTable, {
    "airJumpsLeft",
    "keyCount"
})

local grid = anim8.newGrid(16, 32, img:getWidth(), img:getHeight())

Player.animations = {
    right = {},
    left = {},
}

for i, dir in ipairs({"right", "left"}) do
    Player.animations[dir] = {
        idle = anim8.newAnimation(grid(1, i), math.huge),
        jump = anim8.newAnimation(grid("2-3", i), {0.15, math.huge}),
        doublejump = anim8.newAnimation(grid("4-5", i), {0.15, math.huge}),
        run = anim8.newAnimation(grid("6-9", i), 0.08),
    }
end


Player.drawable = AnimationMachine:new(img, Player.animations)

Player.drawable.x = 6
Player.drawable.oy = 1
Player.drawable.ox = 8

-- TODO: need to clone this somehow; animations are instanced

function Player:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 12, 14)

    self.airJumpsLeft = self.totalAirJumps
    self.keyCount = 0

    self.animationState = "idle"
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
            self.keyCount = self.keyCount + 1
        end

        if other:isInstanceOf(Door) then
            if self.keyCount > 0 then
                other:queueRemove()
                self.keyCount = self.keyCount - 1
            end
        end
    else -- world tile
        if other.properties.spikes and ny < 0  then
            game:die()
            self.active = false
        end
    end
end

function Player:jump()
    for i, dir in ipairs({"right", "left"}) do
        self.animations[dir].jump:gotoFrame(1)
        self.animations[dir].doublejump:gotoFrame(1)
    end
end

function Player:grounded()
    for i, dir in ipairs({"right", "left"}) do
        self.animations[dir].jump:gotoFrame(2)
    end
end

function Player:draw()
    Entity.draw(self)

    if self:nearAltar() then
        love.graphics.draw(useBubble, self.x-6, self.y-26)
    end
end

return Player
