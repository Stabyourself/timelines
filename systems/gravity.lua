local tiny = require("lib.tiny")

local physics = tiny.processingSystem()
physics.filter = tiny.requireAll("gravity")

function physics:process(e, dt)
    e.vy = math.min(e.maxYSpeed, e.vy + e.gravity*dt)
end

return physics
