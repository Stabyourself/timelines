local tiny = require("lib.tiny")

local playerJumping = tiny.processingSystem()
playerJumping.filter = tiny.requireAll("jumpSpeed")

function playerJumping:process(e, dt)
    if e.onGround then
        e.airJumpsLeft = e.totalAirJumps
    end

    if controls:pressed("jump") and (e.onGround or e.airJumpsLeft > 0) then
        e.vy = -e.jumpSpeed

        if not e.onGround then
            e.airJumpsLeft = e.airJumpsLeft - 1
        end
    end
end

return playerJumping
