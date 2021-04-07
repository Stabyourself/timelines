local tiny = require("lib.tiny")
local Sand = require "class.Sand"

local sandSpawner = tiny.processingSystem()
sandSpawner.filter = tiny.requireAll("sandSpawnTimes", "sandSpawnTimer")

function sandSpawner:process(e, dt)
    if not e.sandSpawnTime then
        e.sandSpawnTime = randomSpawnTime(e)
    end

    e.sandSpawnTimer = e.sandSpawnTimer + dt

    if e.sandSpawnTimer > e.sandSpawnTime then
        local x = e.x + 5 - e.drawable.dir*6
        local y = e.y + 10
        local sand = e.level:addEntity(Sand:new(e.level, x, y))

        sand.vx = e.vx * 0.5 - e.drawable.dir*20 + love.math.random(-5, 5)
        sand.vy = e.vy * 0.5 + love.math.random(-5, 5)


        e.sandSpawnTimer = e.sandSpawnTime - e.sandSpawnTime
        e.sandSpawnTime = randomSpawnTime(e)
    end
end

function randomSpawnTime(e)
    return e.sandSpawnTimes[love.math.random(1, #e.sandSpawnTimes)]
end

return sandSpawner
