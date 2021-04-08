local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Door = class("Door", Entity)

Door.drawable = Sprite:new(love.graphics.newImage("img/door.png"))

combineArrays(Door.serializeTable, {
    "meta",
})

function Door:initialize(level, x, y, meta)
    Entity.initialize(self, level, x, y, 8, 32)
    self.meta = meta
end

function Door:draw()
    if self.meta then
        love.graphics.setColor(1, 0, 1)
    end

    Entity.draw(self)

    love.graphics.setColor(1, 1, 1)
end

return Door
