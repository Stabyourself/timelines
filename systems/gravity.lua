local tiny = require("lib.tiny")

local gravity = tiny.processingSystem()
gravity.filter = tiny.requireAll("gravity")

function gravity:process(e, dt)
    local gravity = e.gravity

    if e.ascending and e.jumpGravity and e.vy < 0 then
        gravity = e.jumpGravity
    end

    e.vy = math.min(e.maxYSpeed or math.huge, e.vy + gravity*dt)
end

return gravity
