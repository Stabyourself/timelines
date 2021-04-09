local tiny = require("lib.tiny")
local Sand = require "class.Sand"

local entitySpawner = tiny.processingSystem()
entitySpawner.filter = tiny.requireAll("entitySpawnTimes", "entitySpawnTimer", "entitySpawnEntity")

function entitySpawner:process(e, dt)
        if not e.entitySpawnTime then
            e.entitySpawnTime = randomSpawnTime(e)
        end

        e.entitySpawnTimer = e.entitySpawnTimer + dt

        if e.entitySpawnTimer > e.entitySpawnTime then
            local x, y, vx, vy = e:entitySpawnFunction()

            local entity = e.level:addEntity(e.entitySpawnEntity:new(e.level, x, y))

            entity.vx = vx
            entity.vy = vy


            e.entitySpawnTimer = e.entitySpawnTime - e.entitySpawnTime
            e.entitySpawnTime = randomSpawnTime(e)
        end
    -- end
end

function randomSpawnTime(e)
    return e.entitySpawnTimes[love.math.random(1, #e.entitySpawnTimes)]
end

return entitySpawner
