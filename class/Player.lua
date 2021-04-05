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

local grid = anim8.newGrid(16, img:getHeight(), img:getWidth(), img:getHeight())

Player.animations = {
    idle = anim8.newAnimation(grid(1, 1), math.huge),
    jump = anim8.newAnimation(grid(2, 1), math.huge),
    fall = anim8.newAnimation(grid(2, 1), math.huge),
    run = anim8.newAnimation(grid("3-6", 1), 0.08),
}

function Player:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 12, 14)

    self.airJumpsLeft = self.totalAirJumps
    self.keyCount = 0

    self.drawable = AnimationMachine:new(img, self.animations)

    self.drawable.x = 6
    self.drawable.oy = 17
    self.drawable.ox = 8

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

function Player:draw()
    Entity.draw(self)

    if self:nearAltar() then
        love.graphics.draw(useBubble, self.x-6, self.y-26)
    end
end

return Player
