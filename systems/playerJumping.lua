local tiny = require("lib.tiny")

local playerJumping = tiny.processingSystem()
playerJumping.filter = tiny.requireAll("jumpSpeed")

function playerJumping:process(e, dt)
    if e.controlsEnabled then
        if e.onGround then -- refill air jumps
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
            -- jumping through platforms
            local onPlatform = false

            local propertiesLeft = getPixelProperties(e.level.map, "world", e.x, e.y+e.h)
            local propertiesRight = getPixelProperties(e.level.map, "world", e.x, e.y+e.h)

            if controls:get("down") == 1 and propertiesLeft.platform and propertiesRight.platform then
                e.y = e.y+0.1
            else
                e:jump()

                e.jumping = true
                e.ascending = true

                e.vy = -e.jumpSpeed

                if not onGround then
                    soundManager3.play("doubleJump")
                    e.airJumpsLeft = e.airJumpsLeft - 1
                else
                    soundManager3.play("jump")
                end
            end
        end

        if controls:released("jump") then
            e.ascending = false
        end
    end
end

return playerJumping
