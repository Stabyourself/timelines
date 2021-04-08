local tiny = require("lib.tiny")

local sandTimer = tiny.processingSystem()
sandTimer.filter = tiny.requireAll("sand")

function sandTimer:process(e, dt)
    local absVX = math.abs(e.vx)

    if absVX > 0 then
        e.sand = e.sand - dt*0.2*(absVX/e.maxSpeed)

        if e.sand < 0 then
            e.sand = 0
        end
    end
end

return sandTimer
