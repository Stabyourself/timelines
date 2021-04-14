local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local MovingPlatform = class("MovingPlatform", Entity)

MovingPlatform.drawable = Sprite:new(love.graphics.newImage("img/door.png"))

combineArrays(MovingPlatform.serializeTable, {
    "startX",
    "startY",
    "differenceX",
    "differenceY",
    "moveTimer",
    "moveStep"
})

MovingPlatform.doesntCollideWith = {"Sand", "Player"}

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
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

return MovingPlatform
