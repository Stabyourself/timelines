local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Door = class("Door", Entity)

Door.drawable = Sprite:new(love.graphics.newImage("img/door.png"))
Door.metaDrawable = Sprite:new(love.graphics.newImage("img/door_meta.png"))

combineArrays(Door.serializeTable, {
    "meta",
})

function Door:initialize(level, x, y, meta)
    Entity.initialize(self, level, x, y, 8, 32)
    self.meta = meta
end

function Door:postAdd()
    if self.meta then
        self.drawable = self.metaDrawable
    end
end

return Door
