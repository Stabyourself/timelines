local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local SandUpgrade = class("SandUpgrade", Entity)

SandUpgrade.drawable = Sprite:new(love.graphics.newImage("img/key.png"))
SandUpgrade.drawable.x = 7
SandUpgrade.drawable.y = 4
SandUpgrade.drawable.ox = 7
SandUpgrade.drawable.oy = 4

SandUpgrade.doesntCollideWith = {"Sand", "Arrow", "Door"}

function SandUpgrade:filter(other)
    if other.class and other.class.name == "Player" then
        return "cross"
    end

    return Entity.filter(self, other)
end

combineArrays(SandUpgrade.serializeTable, {
    "meta",
})

function SandUpgrade:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 14, 10)

    self.meta = true
end

return SandUpgrade
