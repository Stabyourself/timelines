local tiny = require("lib.tiny")

local playerAnimation = tiny.processingSystem()
playerAnimation.filter = tiny.requireAll("runAccel")

function playerAnimation:process(e, dt)
    if controls:down("left") then
        e.drawable.sx = -1
    elseif controls:down("right") then
        e.drawable.sx = 1
    end

    if e.onGround then
        if controls:down("left") then
            e.animationState = "run"
        elseif controls:down("right") then
            e.animationState = "run"
        else
            e.animationState = "idle"
        end
    else
        if e.vy < 0 then
            e.animationState = "jump"
        else
            e.animationState = "fall"
        end
    end
end

return playerAnimation
