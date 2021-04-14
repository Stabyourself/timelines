local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Arrow = class("Arrow", Entity)

Arrow.drawable = Sprite:new(love.graphics.newImage("img/arrow.png"))
Arrow.drawable.x = 5.5
Arrow.drawable.y = 2
Arrow.drawable.ox = 10.5
Arrow.drawable.oy = 9

Arrow.doesntCollideWith = {"Sand", "Key", "Arrow", "PlayerParticle"}

function Arrow:filter(other)
    if self.vx > 0 then
        if not other.class and self.x >= other.x then
            return false
        end
    else
        if not other.class and self.x <= other.x+16 then
            return false
        end
    end


    return Entity.filter(self, other)
end

combineArrays(Arrow.serializeTable, {

})

function Arrow:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 11, 4)
end

function Arrow:draw()
    self.drawable.sx = 1

    if self.vx < 0 then
        self.drawable.sx = -1
    end

    Entity.draw(self)
end

function Arrow:collide(other, nx, ny)
    self:queueRemove()

    if other.collide then
        other:collide(self, -nx, -ny)
    end
end

return Arrow
