local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Box = class("Box", Entity)

Box.drawable = Sprite:new(love.graphics.newImage("img/door.png"))
Box.metaDrawable = Sprite:new(love.graphics.newImage("img/door_meta.png"))

combineArrays(Box.serializeTable, {
    "meta",
})

function Box:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 8, 32)
end

function Box:postAdd()
    if self.meta then
        self.drawable = self.metaDrawable
    end

    Entity.postAdd(self)
end

return Box
