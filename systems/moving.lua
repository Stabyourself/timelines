local tiny = require "lib.tiny"
local easing = require "lib.easing"

local moving = tiny.processingSystem()
moving.filter = tiny.requireAll("startX", "startY", "differenceX", "differenceY", "moveTimer", "moveTimes", "moveStep")

function moving:process(e, dt)
    e.moveTimer = e.moveTimer + dt

    while e.moveTimer >= e.moveTimes[e.moveStep] do
        e.moveTimer = e.moveTimer - e.moveTimes[e.moveStep]

        e.moveStep = e.moveStep + 1

        if e.moveStep > 4 then
            e.moveStep = 1
        end
    end

    e.goalX, e.goalY = self:getPosition(e)
end

local easingFunction = easing.inOutQuad

function moving:getPosition(e)
    if e.moveStep == 1 then
        return  easingFunction(e.moveTimer, e.startX, e.differenceX, e.moveTimes[1]),
                easingFunction(e.moveTimer, e.startY, e.differenceY, e.moveTimes[1])
    elseif e.moveStep == 2 then
        return  e.startX + e.differenceX,
                e.startY + e.differenceY
    elseif e.moveStep == 3 then
        return  easingFunction(e.moveTimer, e.startX+e.differenceX, -e.differenceX, e.moveTimes[3]),
                easingFunction(e.moveTimer, e.startY+e.differenceY, -e.differenceY, e.moveTimes[3])
    elseif e.moveStep == 4 then
        return  e.startX,
                e.startY
    end
end

return moving
