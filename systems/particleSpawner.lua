local tiny = require("lib.tiny")

local particleSpawner = tiny.processingSystem()
particleSpawner.filter = tiny.requireAll("particleTimes", "particleClass")

function particleSpawner:process(e, dt)
    if not e.particleTime then
        e.particleTime = randomParticleTime(e)
    end

    e.particleTimer = e.particleTimer + dt

    if e.particleTimer > e.particleTime then
        local x = e.particleX or 0
        local y = e.particleY or 0
        local w = e.particleW or 0
        local h = e.particleH or 0

        e.level:addParticleInRect(e.x+x, e.y+y, w, h, e.particleClass)

        e.particleTimer = e.particleTimer - e.particleTime
        e.particleTime = randomParticleTime(e)
    end
end

function randomParticleTime(e)
    return e.particleTimes[love.math.random(1, #e.particleTimes)]
end

return particleSpawner
