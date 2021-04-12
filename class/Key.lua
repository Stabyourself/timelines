local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Key = class("Key", Entity)

Key.drawable = Sprite:new(love.graphics.newImage("img/key.png"))
Key.drawable.x = 7
Key.drawable.y = 4
Key.drawable.ox = 7
Key.drawable.oy = 4

Key.metaDrawable = Sprite:new(love.graphics.newImage("img/key_meta.png"))
Key.metaDrawable.x = 7
Key.metaDrawable.y = 4
Key.metaDrawable.ox = 7
Key.metaDrawable.oy = 4

Key.doesntCollideWith = {"Sand", "Arrow", "Door"}

function Key:filter(other)
    if other.class and other.class.name == "Player" then
        return "cross"
    end

    return Entity.filter(self, other)
end

Key.bobDistance = 2
Key.bobTime = 3

Key.wobbleTime = 1.5
Key.wobbleDistance = 0.1

combineArrays(Key.serializeTable, {
    "goalX",
    "goalY",
    "bobStart",
    "bobTimer",
    "wobbleTimer",
    "meta",
})

function Key:initialize(level, x, y, meta)
    Entity.initialize(self, level, x, y, 14, 10)
    self.meta = meta

    self.goalX = self.x
    self.goalY = self.y

    self.bobStart = self.y
    self.bobTimer = 0

    self.wobbleTimer = 0
end

function Key:postAdd()
    if self.meta then
        self.drawable = self.metaDrawable
    end
end

function Key:draw()
    Entity.draw(self)

    love.graphics.setColor(1, 1, 1)
end

return Key
