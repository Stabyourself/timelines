local tiny = require("lib.tiny")

local pi2 = math.pi*2

local wobbling = tiny.processingSystem()
wobbling.filter = tiny.requireAll("wobbleTime", "wobbleDistance", "wobbleTimer")

function wobbling:process(e, dt)
    e.wobbleTimer = (e.wobbleTimer + dt) % e.wobbleTime

    e.r = math.sin(e.wobbleTimer / e.wobbleTime * pi2) * e.wobbleDistance
end

return wobbling
