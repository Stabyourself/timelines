local Entity = require "class.Entity"
local Box = class("Box", Entity)
local boxDraws = require("lib.boxDrawing")

Box.doesntCollideWith = {"Sand"}

combineArrays(Box.serializeTable, {
    "meta",
})

Box.friction = 10
Box.gravity = 500

function Box:initialize(level, x, y)
    Entity.initialize(self, level, x, y)
end

function Box:postAdd()
    if self.meta then
        self.boxDraw = boxDraws.meta
    else
        self.boxDraw = boxDraws.regular
    end

    Entity.postAdd(self)
end

function Box:draw()
    -- love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)

    self.boxDraw:draw(self.x, self.y, self.w, self.h)
end

return Box
