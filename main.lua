love.graphics.setDefaultFilter("nearest", "nearest")

require "util"
require "variables"
require "environment"
require "run"

class = require("lib.middleclass")
inspect = function(v) print(require "lib.inspect"(v)) end -- good code

local tiny = require("lib.tiny")


local FrameDebug3 = require "lib.FrameDebug3"
local baton = require "lib.baton"
local gamestate = require "lib.gamestate"
local game = require "game"

function love.load()
    controls = baton.new(require "controls")

    gamestate.registerEvents()
    gamestate.switch(game)
end

function love.update(dt)
    controls:update()
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
