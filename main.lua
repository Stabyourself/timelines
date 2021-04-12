love.graphics.setDefaultFilter("nearest", "nearest")

require "util"
require "variables"
if love.filesystem.getInfo("environment.lua") then
    require "environment"
end
require "run"

class = require("lib.middleclass")
inspect = function(v, o) print(require "lib.inspect"(v, o)) end -- good code

local baton = require "lib.baton"
local frameDebug3 = require "lib.frameDebug3"

-- evil globals go in this cage so they can't escape --
gamestate = require "lib.gamestate"
require "game"
require "timetable"
controls = baton.new(require "controls")
timer = require "lib.timer"
-------------------------------------------------------



function love.load()
    imageFont = love.graphics.newImageFont("img/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 .,:;!?\"%()/+-=", 1)
    love.graphics.setFont(imageFont)

    gamestate.registerEvents()
    gamestate.switch(game)

    gamestate.push(timetable, true, false)

    -- timetable:init()
    -- game:startOnNode(game.rootNode)
end

function love.update(dt)
    timer.update(dt)
    controls:update()

    love.window.setTitle("Timelines " .. love.timer.getFPS())
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end

    if key == "#" then
        frameDebug3.frameAdvance()
    end

    if key == "pause" then
        frameDebug3.pausePlay()
    end
end
