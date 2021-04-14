local tiny = require("lib.tiny")

local playerMovement = tiny.processingSystem()
playerMovement.filter = tiny.requireAll("runAccel", "brakeAccel", "maxSpeed")

function playerMovement:process(e, dt)
    if e.controlsEnabled then
        if controls:down("left") and e.vx > -e.maxSpeed then
            e.vx = math.max(-e.maxSpeed, e.vx - dt * (e.vx > 0 and e.brakeAccel or e.runAccel))
        elseif controls:down("right") and e.vx < e.maxSpeed then
            e.vx = math.min(e.maxSpeed, e.vx + dt * (e.vx < 0 and e.brakeAccel or e.runAccel))
        else
            local brake = dt * (e.vx < 0 and e.brakeAccel or -e.brakeAccel)
            if math.abs(brake) > math.abs(e.vx) then
                e.vx = 0
            else
                e.vx = e.vx + brake
            end
        end
    end
end

return playerMovement
