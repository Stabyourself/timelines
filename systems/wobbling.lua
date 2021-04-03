local tiny = require("lib.tiny")

local pi2 = math.pi*2

local bobbing = tiny.processingSystem()
bobbing.filter = tiny.requireAll("bobStart", "bobDistance", "bobTime", "bobTimer")

function bobbing:process(e, dt)
    e.bobTimer = (e.bobTimer + dt) % e.bobTime

    e.goalY = e.bobStart + math.sin(e.bobTimer / e.bobTime * pi2) * e.bobDistance
end

return bobbing
