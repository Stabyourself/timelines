local Entity = require "class.Entity"
local Door = class("Door", Entity)

local spriteDrawable = require "class.drawables.sprite"

Door.drawable = {
    img = love.graphics.newImage("img/door.png"),
}

combineArrays(Door.serializeTable, {
    "transcendent",
})

function Door:initialize(level, x, y, transcendent)
    Entity.initialize(self, level, x, y, 8, 32)
    self.transcendent = transcendent
end

function Door:draw()
    if self.transcendent then
        love.graphics.setColor(1, 0, 1)
    end

    spriteDrawable:draw(self)

    love.graphics.setColor(1, 1, 1)
end

return Door
