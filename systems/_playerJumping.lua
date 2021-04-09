local tiny = require("lib.tiny")

local playerJumping = tiny.processingSystem()
playerJumping.filter = tiny.requireAll("jumpSpeed")

function playerJumping:process(e, dt)
    if e.onGround then
        e.airJumpsLeft = e.totalAirJumps
        e.coyoteTimer = 0
    else
        e.coyoteTimer = e.coyoteTimer + dt
    end

    local onGround = e.onGround

    -- coyote time
    if not onGround and e.coyoteTime then
        if e.coyoteTimer <= e.coyoteTime then
            onGround = true
        end
    end

    if controls:pressed("jump") and (onGround or e.airJumpsLeft > 0) then
        e:jump()

        e.jumping = true
        e.ascending = true

        e.vy = -e.jumpSpeed

        if not onGround then
            e.airJumpsLeft = e.airJumpsLeft - 1
        end
    end

    if controls:released("jump") then
        e.ascending = false
    end
end

return playerJumping
