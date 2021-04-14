local tiny = require("lib.tiny")
local Sand = require "class.Sand"

local entitySpawner = tiny.processingSystem()
entitySpawner.filter = tiny.requireAll("entitySpawnTimer", "entitySpawnEntity")

function entitySpawner:process(e, dt)
        if not e.currentSpawnTime then
            e.currentSpawnTime = randomSpawnTime(e)
        end

        e.entitySpawnTimer = e.entitySpawnTimer + dt

        if e.entitySpawnTimer >= e.currentSpawnTime then
            local x, y, vx, vy = e:entitySpawnFunction()

            local entity = e.level:addEntity(e.entitySpawnEntity:new(e.level, x, y))

            entity.vx = vx
            entity.vy = vy


            e.entitySpawnTimer = e.entitySpawnTimer - e.currentSpawnTime
            e.currentSpawnTime = randomSpawnTime(e)
        end
    -- end
end

function randomSpawnTime(e)
    if e.entitySpawnTime then
        return e.entitySpawnTime
    end

    return e.entitySpawnTimes[love.math.random(1, #e.entitySpawnTimes)]
end

return entitySpawner
