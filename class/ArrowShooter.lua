local Entity = require "class.Entity"
local Arrow = require "class.Arrow"
local ArrowShooter = class("ArrowShooter", Entity)


ArrowShooter.entitySpawnTimes = {2}
ArrowShooter.entitySpawnEntity = Arrow
ArrowShooter.entitySpawnFunction = function(self)
    local x = self.x+5
    local y = self.y-6

    local vx = 130
    local vy = 0

    return x, y, vx, vy
end

combineArrays(ArrowShooter.serializeTable, {
    "entitySpawnTimer"
})

function ArrowShooter:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 16, 16, false)

    self.entitySpawnTimer = 0
end

return ArrowShooter
