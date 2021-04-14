local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Box = class("Box", Entity)

Box.doesntCollideWith = {"Sand"}

combineArrays(Box.serializeTable, {
    "meta",
})

Box.friction = 10

function Box:initialize(level, x, y)
    Entity.initialize(self, level, x, y)
end

function Box:postAdd()
    if self.meta then
        self.drawable = self.metaDrawable
    end

    Entity.postAdd(self)
end

function Box:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

return Box
