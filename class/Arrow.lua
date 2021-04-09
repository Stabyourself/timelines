local Entity = require "class.Entity"
local Sprite = require "class.drawables.Sprite"
local Arrow = class("Key", Entity)

Arrow.drawable = Sprite:new(love.graphics.newImage("img/key.png"))
Arrow.drawable.x = 7
Arrow.drawable.y = 4
Arrow.drawable.ox = 7
Arrow.drawable.oy = 4



function Arrow:filter(other)


    return Entity.filter(self, other)
end

combineArrays(Arrow.serializeTable, {

})

function Arrow:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 14, 10)
end

function Arrow:collide()
    self:queueRemove()
end

return Arrow
