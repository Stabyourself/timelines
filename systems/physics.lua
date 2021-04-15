local tiny = require("lib.tiny")

local physics = tiny.processingSystem()
physics.filter = tiny.requireAll("x", "y", "vx", "vy", "w", "h")

function onTopFilter(e, other)
    if e.onTopOf == other then
        return false
    else
        return e:filter(other)
    end
end

function physics:process(e, dt)
    if e.worldRemove then
        e:removeFromWorld()
        e:removeFromECS()
        return
    end

    if e.physics and e.active and dt > 0 then
        local wasOnGround = e.onGround

        e.onGround = false

        local previousX = e.x
        local previousY = e.y

        local goalX
        local goalY

        if e.onTopOf and e.onTopOf.movedByX then
            self:doMovement(e, e.x + e.onTopOf.movedByX, e.y + e.onTopOf.movedByY, onTopFilter)

            e.onTopOf = nil
        end

        if e.goalX then
            goalX = e.goalX
            goalY = e.goalY
        else
            goalX = e.x + e.vx * dt
            goalY = e.y + e.vy * dt
        end

        if goalX == e.x and goalY == e.y then
            e.movedByX = 0
            e.movedByY = 0
            return
        end

        self:doMovement(e, goalX, goalY)

        if not wasOnGround and e.onGround then
            if e.grounded then e:grounded() end
        end

        if wasOnGround and not e.onGround then
            if e.aired then e:aired() end
        end

        e.movedByX = e.x - previousX
        e.movedByY = e.y - previousY
    end
end

function physics:doMovement(e, goalX, goalY, filter)
    local nextX, nextY, cols = e.level.world:move(e, goalX, goalY, filter or e.filter)

    for _, col in ipairs(cols) do
        local resetSpeed = true

        if e.collide then
            if e:collide(col.other, col.normal.x, col.normal.y) then
                resetSpeed = false
            end
        end

        if col.type ~= "cross" and resetSpeed then
            physics.resolveCollision(e, col.other, col.normal.x, col.normal.y)
        end
    end

    e.x = nextX
    e.y = nextY
end

function physics.resolveCollision(e, other, nx, ny) -- default collision resolvement only sets speed to 0
    if (nx < 0 and e.vx > 0) or (nx > 0 and e.vx < 0) then
        e.vx = 0
    end

    if (ny < 0 and e.vy > 0) then
        e.onGround = true
        e.onTopOf = other
    end

    if (ny < 0 and e.vy > 0) or (ny > 0 and e.vy < 0) then
        e.vy = 0
    end
end

return physics
