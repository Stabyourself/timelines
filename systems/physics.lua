local tiny = require("lib.tiny")

local physics = tiny.processingSystem()
physics.filter = tiny.requireAll("x", "y", "vx", "vy", "w", "h")

function physics:process(e, dt)
    e.onGround = false


    local goalX
    local goalY

    if e.goalX then
        goalX = e.goalX
        goalY = e.goalY
    else
        goalX = e.x + e.vx * dt
        goalY = e.y + e.vy * dt
    end

    if goalX == e.x and goalY == e.y then
        return
    end

    local nextX, nextY, cols = e.world:move(e, goalX, goalY, e.filter)

    for _, col in ipairs(cols) do
        if e.collide then
            e:collide(col.other, col.normal.x, col.normal.y)
        end

        if col.type ~= "cross" then
            physics.resolveCollision(e, col.normal.x, col.normal.y)
        end
    end

    e.x = nextX
    e.y = nextY
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
