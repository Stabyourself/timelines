local Entity = require "class.Entity"
local Arrow = require "class.Arrow"
local ArrowShooter = class("ArrowShooter", Entity)


ArrowShooter.entitySpawnEntity = Arrow

combineArrays(ArrowShooter.serializeTable, {
    "entitySpawnTimer",
    "entitySpawnTime",
    "dir"
})

function ArrowShooter:initialize(level, x, y, dir, spawnTime)
    Entity.initialize(self, level, x, y, 16, 16, false)

    self.dir = dir
    self.entitySpawnTime = spawnTime

    self.entitySpawnTimer = 0
end


function ArrowShooter:entitySpawnFunction()
    local y = self.y-6

    local vy = 0

    local x, vx

    if self.dir == "right" then
        x = self.x+5
        vx = 130
    else
        x = self.x
        vx = -130
    end

    return x, y, vx, vy
end

return ArrowShooter
