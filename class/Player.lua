local Entity = require "class.Entity"
local Key = require "class.Key"
local Door = require "class.Door"

local spriteDrawable = require "class.drawables.sprite"
local img = love.graphics.newImage("img/player.png")

local Player = class("Player", Entity)

function Player:filter(other)
    if other.properties and other.properties.platform and self.y + self.h > other.y then
        return false
    end

    if other.class and other.class.name == "Key" then
        return "cross"
    end

    if other.class and other.class.name == "Door" then
        if self.keyCount > 0 then
            return "cross"
        end
    end

    return "slide"
end

Player.runAccel = 500
Player.brakeAccel = 800
Player.runAccel = 500
Player.maxSpeed = 100

Player.jumpSpeed = 210
Player.totalAirJumps = 1

Player.gravity = 800
Player.maxYSpeed = 300

Player.drawable = {
    img = img,
    x = -1,
}

function Player:initialize(level, x, y)
    self.level = level
    Entity.initialize(self, level, x+2, y-14, 12, 14)

    self.airJumpsLeft = self.totalAirJumps
    self.keyCount = 0
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
            print("oh no I died!")
        end
    end
end

function Player:draw()
    spriteDrawable:draw(self)
end

return Player
