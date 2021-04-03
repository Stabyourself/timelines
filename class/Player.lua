local Entity = require "class.Entity"
local Key = require "class.Key"

local Player = class("Player", Entity)

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

    self.mask = {
        Key
    }
end

function Player:collide(obj)
end

return Player
