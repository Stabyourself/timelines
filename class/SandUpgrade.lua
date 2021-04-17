local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local SandUpgrade = class("SandUpgrade", Entity)
local anim8 = require "lib.anim8"

SandUpgrade.drawable = Sprite:new(love.graphics.newImage("img/key.png"))

SandUpgrade.doesntCollideWith = {"Sand", "Arrow", "Door"}

local img = love.graphics.newImage("img/sand_upgrade.png")
local lockGrid = anim8.newGrid(16, 16, img:getWidth(), img:getHeight())

SandUpgrade.bobDistance = 2
SandUpgrade.bobTime = 3

function SandUpgrade:filter(other)
    if other.class and other.class.name == "Player" then
        return "cross"
    end

    return Entity.filter(self, other)
end

combineArrays(SandUpgrade.serializeTable, {
    "meta",
    "bobStart",
    "bobTimer",
})

function SandUpgrade:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 16, 16)

    self.goalX = self.x
    self.goalY = self.y

    self.meta = true
    self.bobTimer = 0
    self.bobStart = self.y

    self.animation = anim8.newAnimation(lockGrid("1-3", 1), 0.2)
end

function SandUpgrade:update(dt)
    self.animation:update(dt)
end

function SandUpgrade:draw()
    self.animation:draw(img, self.x, self.y)
end

return SandUpgrade
