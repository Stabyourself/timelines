local Entity = require "class.Entity"
local Door = class("Door", Entity)

local spriteDrawable = require "class.drawables.sprite"
local img = love.graphics.newImage("img/door.png")

function Door:initialize(level, x, y, transcendent)
    self.level = level
    Entity.initialize(self, level, x+4, y-32, 8, 32)
    self.transcendent = transcendent

    self.drawable = {
        img = img,
    }
end

function Door:draw()
    if self.transcendent then
        love.graphics.setColor(1, 0, 1)
    end

    spriteDrawable:draw(self)

    love.graphics.setColor(1, 1, 1)
end

return Door
