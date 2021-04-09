local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Arrow = class("Key", Entity)

Arrow.drawable = Sprite:new(love.graphics.newImage("img/arrow.png"))
Arrow.drawable.x = 5.5
Arrow.drawable.y = 2
Arrow.drawable.ox = 10.5
Arrow.drawable.oy = 9



function Arrow:filter(other)
    if not other.class and self.x >= other.x then
        return false
    end

    return Entity.filter(self, other)
end

combineArrays(Arrow.serializeTable, {

})

function Arrow:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 11, 4)
end

function Arrow:collide(other, nx, ny)
    self:queueRemove()
end

return Arrow
