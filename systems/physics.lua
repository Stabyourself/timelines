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
        end

        e.onTopOf = nil

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

    local keepPosition = false

    for _, col in ipairs(cols) do
        local keepSpeed = false

        if e.collide then
            keepSpeed, keepPosition = e:collide(col.other, col.normal.x, col.normal.y)
        end

        if col.type ~= "cross" and not keepSpeed then
            physics.resolveCollision(e, col.other, col.normal.x, col.normal.y)
        end
    end

    if keepPosition then
        e.x = goalX
        e.y = goalY

        e.level.world:update(e, e.x, e.y)
    else
        e.x = nextX
        e.y = nextY
    end
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
