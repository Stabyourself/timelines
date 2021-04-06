local tiny = require("lib.tiny")

local physics = tiny.processingSystem()
physics.filter = tiny.requireAll("gravity")

function physics:process(e, dt)
    local gravity = e.gravity

    if e.ascending and e.jumpGravity and e.vy < 0 then
        gravity = e.jumpGravity
    end

    e.vy = math.min(e.maxYSpeed, e.vy + gravity*dt)


end

return physics
