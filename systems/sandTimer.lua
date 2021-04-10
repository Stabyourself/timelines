local tiny = require("lib.tiny")
local Sand = require "class.Sand"

local sandTimer = tiny.processingSystem()
sandTimer.filter = tiny.requireAll("sand")

function sandTimer:process(e, dt)
    local absVX = math.abs(e.vx)
    local absVY = math.abs(e.vy)

    if absVX > 0 then
        e.sand = e.sand - dt*(absVX/e.maxSpeed)*0.05

        if e.sand < 0 then
            e.sand = 0
        end
    end

    -- control the entity spawner
    if e.entitySpawnEntity then
        if math.abs(e.vx) == 0 or e.sand == 0 then
            e.entitySpawnEntity = nil
            e:refreshECS()
        end
    else
        if math.abs(e.vx) > 0 and e.sand > 0 then
            e.entitySpawnEntity = Sand
            e:refreshECS()
        end
    end
end

return sandTimer
