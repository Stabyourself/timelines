local tiny = require("lib.tiny")

local sandTimer = tiny.processingSystem()
sandTimer.filter = tiny.requireAll("sand")

function sandTimer:process(e, dt)
    e.sand = e.sand - dt*0.2

    if e.sand < 0 then
        e.sand = e.sand + 1
    end
end

return sandTimer
