love.graphics.setDefaultFilter("nearest", "nearest")

require "util"
require "variables"
require "environment"
require "run"

class = require("lib.middleclass")
inspect = function(v, o) print(require "lib.inspect"(v, o)) end -- good code

local tiny = require("lib.tiny")

local baton = require "lib.baton"
local FrameDebug3 = require "lib.FrameDebug3"

-- evil globals go in this cage so they can't escape --
gamestate = require "lib.gamestate"
require "game"
require "timetable"
controls = baton.new(require "controls")
timer = require "lib.timer"
-------------------------------------------------------



function love.load()
    gamestate.registerEvents()
    gamestate.switch(game)
    gamestate.push(timetable, true)
end

function love.update(dt)
    timer.update(dt)
    controls:update()

    if controls:pressed("debug1") then
        game:makeNode()
    end
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end

    if key == "#" then
        FrameDebug3.frameAdvance()
    end

    if key == "pause" then
        FrameDebug3.pausePlay()
    end
end
