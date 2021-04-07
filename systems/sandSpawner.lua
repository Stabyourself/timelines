local tiny = require("lib.tiny")
local Sand = require "class.Sand"

local sandSpawner = tiny.processingSystem()
sandSpawner.filter = tiny.requireAll("sandSpawnTime", "sandSpawnTimer")

function sandSpawner:process(e, dt)
    e.sandSpawnTimer = e.sandSpawnTimer + dt

    if e.sandSpawnTimer > e.sandSpawnTime then
        e.level:addEntity(Sand:new(e.level, e.x, e.y))

        e.sandSpawnTimer = e.sandSpawnTime - e.sandSpawnTime
    end
end

return sandSpawner
