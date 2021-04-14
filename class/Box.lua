local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Box = class("Box", Entity)

Box.doesntCollideWith = {"Sand"}

combineArrays(Box.serializeTable, {
    "meta",
})

Box.friction = 10
Box.gravity = 500

Box.corners = love.graphics.newImage("img/box/corners.png")
Box.cornersMeta = love.graphics.newImage("img/box/corners_meta.png")
local cornerQuads = {
    love.graphics.newQuad(0, 0, 4, 4, 8, 8),
    love.graphics.newQuad(4, 0, 4, 4, 8, 8),
    love.graphics.newQuad(0, 4, 4, 4, 8, 8),
    love.graphics.newQuad(4, 4, 4, 4, 8, 8),
}

Box.hor = love.graphics.newImage("img/box/hor.png")
Box.horMeta = love.graphics.newImage("img/box/hor_meta.png")
Box.hor:setWrap("repeat", "repeat")
Box.horMeta:setWrap("repeat", "repeat")
local horQuads = {
    love.graphics.newQuad(0, 0, 8, 4, 8, 8),
    love.graphics.newQuad(0, 4, 8, 4, 8, 8),
}

Box.ver = love.graphics.newImage("img/box/ver.png")
Box.verMeta = love.graphics.newImage("img/box/ver_meta.png")
Box.ver:setWrap("repeat", "repeat")
Box.verMeta:setWrap("repeat", "repeat")
local verQuads = {
    love.graphics.newQuad(0, 0, 4, 8, 8, 8),
    love.graphics.newQuad(4, 0, 4, 8, 8, 8),
}

Box.middle = love.graphics.newImage("img/box/middle.png")
Box.middleMeta = love.graphics.newImage("img/box/middle_meta.png")
Box.middle:setWrap("repeat", "repeat")
Box.middleMeta:setWrap("repeat", "repeat")
local middleQuad = love.graphics.newQuad(0, 0, 8, 8, 8, 8)

function Box:initialize(level, x, y)
    Entity.initialize(self, level, x, y)
end

function Box:postAdd()
    if self.meta then
        self.corners = self.cornersMeta
        self.hor = self.horMeta
        self.ver = self.verMeta
        self.middle = self.middleMeta
    end

    Entity.postAdd(self)
end

function Box:draw()
    -- love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)

    love.graphics.draw(self.corners, cornerQuads[1], self.x, self.y)
    love.graphics.draw(self.corners, cornerQuads[2], self.x+self.w-4, self.y)
    love.graphics.draw(self.corners, cornerQuads[3], self.x, self.y+self.h-4)
    love.graphics.draw(self.corners, cornerQuads[4], self.x+self.w-4, self.y+self.h-4)

    local w = self.w-8
    horQuads[1]:setViewport(0, 0, w, 4, 8, 8)
    horQuads[2]:setViewport(0, 4, w, 4, 8, 8)

    love.graphics.draw(self.hor, horQuads[1], self.x+4, self.y)
    love.graphics.draw(self.hor, horQuads[2], self.x+4, self.y+self.h-4)

    local h = self.h-8
    verQuads[1]:setViewport(0, 0, 4, h, 8, 8)
    verQuads[2]:setViewport(4, 0, 4, h, 8, 8)

    love.graphics.draw(self.ver, verQuads[1], self.x, self.y+4)
    love.graphics.draw(self.ver, verQuads[2], self.x+self.w-4, self.y+4)

    middleQuad:setViewport(0, 0, w, h, 8, 8)
    love.graphics.draw(self.middle, middleQuad, self.x+4, self.y+4)
end

return Box
