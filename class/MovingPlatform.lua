local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local boxDraws = require("lib.boxDrawing")

local MovingPlatform = class("MovingPlatform", Entity)

MovingPlatform.drawable = Sprite:new(love.graphics.newImage("img/door.png"))

combineArrays(MovingPlatform.serializeTable, {
    "startX",
    "startY",
    "differenceX",
    "differenceY",
    "moveTimer",
    "moveStep",
    "moveTimes",
})

MovingPlatform.doesntCollideWith = {"Sand", "Player"}

function MovingPlatform:filter(other)
    -- hack to stop falling through platforms that go up while jumping
    if other.class and other.class.name == "Player" then
        if other.onTopOf ~= self then
            other.onTopOf = self
        end
    end

    return Entity.filter(self, other)
end

MovingPlatform.moveTimes = {
    -- forth, wait, back, wait
    2, 1, 2, 1
}

MovingPlatform.platform = true

function MovingPlatform:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 16, 16)

    self.startX = x
    self.startY = y
    self.moveTimer = 0
    self.moveStep = 1
end

function MovingPlatform:draw()
    boxDraws.regular:draw(self.x, self.y, self.w, self.h)
end

return MovingPlatform
