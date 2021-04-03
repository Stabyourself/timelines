local Entity = require "class.Entity"
local Key = require "class.Key"
local Door = require "class.Door"

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

function Player:initialize(level, x, y)
    self.level = level
    Entity.initialize(self, level, x+2, y-12, 12, 12)

    self.runAccel = 500
    self.brakeAccel = 800
    self.maxSpeed = 100

    self.jumpSpeed = 210
    self.totalAirJumps = 1
    self.airJumpsLeft = self.totalAirJumps

    self.gravity = 800
    self.maxYSpeed = 300

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

return Player
