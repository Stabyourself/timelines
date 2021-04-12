local tiny = require("lib.tiny")

local playerAnimation = tiny.processingSystem()
playerAnimation.filter = tiny.requireAll("runAccel")

function playerAnimation:process(e, dt)
    if e.controlsEnabled then
        if controls:down("left") then
            e.drawable.dir = -1
        elseif controls:down("right") then
            e.drawable.dir = 1
        end
    end

    if e.onGround then
        if e.vx == 0 then
            e.animationState = "idle"
        else
            if controls:down("left") then
                e.animationState = "run"
            elseif controls:down("right") then
                e.animationState = "run"
            end
        end
    else
        if e.jumping then
            if e.airJumpsLeft > 0 then
                e.animationState = "jump"
            else
                e.animationState = "doublejump"
            end
        else
            e.animationState = "fall"
        end
    end
end

return playerAnimation
