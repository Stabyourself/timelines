local tiny = require("lib.tiny")

local playerAnimation = tiny.processingSystem()
playerAnimation.filter = tiny.requireAll("runAccel")

function playerAnimation:process(e, dt)
    if controls:down("left") then
        e.drawable.dir = "left"
    elseif controls:down("right") then
        e.drawable.dir = "right"
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
        if e.airJumpsLeft > 0 then
            e.animationState = "jump"
        else
            e.animationState = "doublejump"
        end
    end
end

return playerAnimation
