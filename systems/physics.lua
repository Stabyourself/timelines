local tiny = require("lib.tiny")

local physics = tiny.processingSystem()
physics.filter = tiny.requireAll("x", "y", "vx", "vy", "w", "h")

function physics:process(e, dt)
    e.onGround = false

    local future_x = e.x + e.vx * dt
    local future_y = e.y + e.vy * dt

    local next_x, next_y, cols = e.world:move(e, future_x, future_y, e.filter)

    for _, col in ipairs(cols) do
        physics.resolveCollision(e, col.normal.x, col.normal.y)
    end

    e.x = next_x
    e.y = next_y
end

function physics.resolveCollision(e, nx, ny) -- default collision resolvement only sets speed to 0
    if (nx < 0 and e.vx > 0) or (nx > 0 and e.vx < 0) then
        e.vx = 0
    end

    if (ny < 0 and e.vy > 0) then
        e.onGround = true
    end

    if (ny < 0 and e.vy > 0) or (ny > 0 and e.vy < 0) then
        e.vy = 0
    end
end

return physics
