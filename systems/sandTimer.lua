local tiny = require("lib.tiny")

local sandTimer = tiny.processingSystem()
sandTimer.filter = tiny.requireAll("sand")

function sandTimer:process(e, dt)
    if math.abs(e.vx) > 0 or math.abs(e.vy) > 0 then
        e.sand = e.sand - dt*0.2

        if e.sand < 0 then
            e.sand = 0
        end
    end
end

return sandTimer
