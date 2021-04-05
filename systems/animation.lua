local tiny = require("lib.tiny")

local animation = tiny.processingSystem()
animation.filter = tiny.requireAll("animations", "animationState")

function animation:process(e, dt)
    e.drawable.animations[e.animationState]:update(dt)
end

return animation
