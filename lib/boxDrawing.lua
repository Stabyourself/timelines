local Box = class("Box")

local cornerQuads = {
    love.graphics.newQuad(0, 0, 4, 4, 8, 8),
    love.graphics.newQuad(4, 0, 4, 4, 8, 8),
    love.graphics.newQuad(0, 4, 4, 4, 8, 8),
    love.graphics.newQuad(4, 4, 4, 4, 8, 8),
}

local horQuads = {
    love.graphics.newQuad(0, 0, 8, 4, 8, 8),
    love.graphics.newQuad(0, 4, 8, 4, 8, 8),
}

local verQuads = {
    love.graphics.newQuad(0, 0, 4, 8, 8, 8),
    love.graphics.newQuad(4, 0, 4, 8, 8, 8),
}

local middleQuad = love.graphics.newQuad(0, 0, 8, 8, 8, 8)

function Box:initialize(path)
    self.corners = love.graphics.newImage(path .. "corners.png")

    self.hor = love.graphics.newImage(path .. "hor.png")
    self.hor:setWrap("repeat", "repeat")

    self.ver = love.graphics.newImage(path .. "ver.png")
    self.ver:setWrap("repeat", "repeat")

    self.middle = love.graphics.newImage(path .. "middle.png")
    self.middle:setWrap("repeat", "repeat")
end

function Box:draw(x, y, w, h)
    love.graphics.draw(self.corners, cornerQuads[1], x, y)
    love.graphics.draw(self.corners, cornerQuads[2], x+w-4, y)
    love.graphics.draw(self.corners, cornerQuads[3], x, y+h-4)
    love.graphics.draw(self.corners, cornerQuads[4], x+w-4, y+h-4)

    local mw = w-8
    horQuads[1]:setViewport(0, 0, mw, 4, 8, 8)
    horQuads[2]:setViewport(0, 4, mw, 4, 8, 8)

    love.graphics.draw(self.hor, horQuads[1], x+4, y)
    love.graphics.draw(self.hor, horQuads[2], x+4, y+h-4)

    local mh = h-8
    verQuads[1]:setViewport(0, 0, 4, mh, 8, 8)
    verQuads[2]:setViewport(4, 0, 4, mh, 8, 8)

    love.graphics.draw(self.ver, verQuads[1], x, y+4)
    love.graphics.draw(self.ver, verQuads[2], x+w-4, y+4)

    middleQuad:setViewport(0, 0, mw, mh, 8, 8)
    love.graphics.draw(self.middle, middleQuad, x+4, y+4)
end

local boxes = {
    regular = Box:new("img/box/regular/"),
    meta = Box:new("img/box/meta/"),
}

return boxes