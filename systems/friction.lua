local tiny = require("lib.tiny")

local friction = tiny.processingSystem()
friction.filter = tiny.requireAll("vx", "friction")

function friction:process(e, dt)
    if e.vx ~= 0 then
        e.vx = e.vx - e.vx*e.friction*dt
    end
end

return friction
