local tiny = require("lib.tiny")

local animation = tiny.processingSystem()
animation.filter = tiny.requireAll("animations", "animationState")

function animation:process(e, dt)
    -- update both dirs so we don't get weird animation jitters when changing direction
    e.drawable.animations[-1][e.animationState]:update(dt)
    e.drawable.animations[1][e.animationState]:update(dt)
end

return animation
