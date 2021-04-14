local tiny = require("lib.tiny")

local pi2 = math.pi*2

local bobbing = tiny.processingSystem()
bobbing.filter = tiny.requireAll("startX", "startY", "endX", "endY", "moveTimer", "moveTimes")

function bobbing:process(e, dt)
    e.goalX = e.x + 10*dt
end

return bobbing
