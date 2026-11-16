love.graphics.setDefaultFilter("nearest", "nearest")

isweb = love.system.getOS() == "Web"
if isweb then
    -- no quitting in browsers
    love.event.quit = function() end
end

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
require "endScreen"
controls = baton.new(require "controls")
timer = require "lib.timer"
flowControllers = {}
-------------------------------------------------------

-- sounds
soundManager3 = require "lib.soundManager3"

soundManager3.loadSounds({
    {name="jump", path="sound/jump.wav", count=2},
    {name="doubleJump", path="sound/double_jump.wav", count=2},
    {name="keyCollect", path="sound/key_collect.wav", count=2},
    {name="explode", path="sound/explode.wav", count=1},
    {name="glass", path="sound/glass.wav", count=10},
    {name="doorOpen", path="sound/door_open.wav", count=2},
    {name="die", path="sound/die.wav", count=1},
    {name="playerLand", path="sound/player_land.wav", count=2},
    {name="spawn", path="sound/spawn.wav", count=1},
    {name="finishSpawn", path="sound/finish_spawn.wav", count=1},
    {name="sandUpgrade", path="sound/sand_upgrade.wav", count=1},
    {name="bossHit", path="sound/boss_hit.wav", count=1},
    {name="bossNotHit", path="sound/boss_not_hit.wav", count=2},
    {name="shrineActivate", path="sound/shrine_activate.wav", count=2},
})

music = love.audio.newSource("sound/music.wav", "static")
music:setLooping(true)
music:setVolume(0.15)

function love.load()
    imageFont = love.graphics.newImageFont("img/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 .,:;!?\"%()/+-=", 1)
    love.graphics.setFont(imageFont)

    gamestate.registerEvents()
    gamestate.switch(game)

    gamestate.push(timetable, true, false)

    if SKIPTIMETABLE then
        timetable:init()
        game:startOnNode(game.rootNode)
        timetable:close()
    end
end

function love.update(dt)
    timer.update(dt)
    updateGroup(flowControllers, dt)
    controls:update()

    if not isweb then
        love.window.setTitle("Timelines " .. love.timer.getFPS())
    else
        updatewebscale(dt)
    end
end

--web: biggest whole scale that fits the browser window, the page stretches the rest
function webscale()
    local size = love.js and love.js.eval and
        love.js.eval("Math.floor(innerWidth*devicePixelRatio)+' '+Math.floor(innerHeight*devicePixelRatio)")
    local w, h = string.match(size or "", "(%d+) (%d+)")
    if not w then
        return SCALE
    end
    return math.max(1, math.min(math.floor(tonumber(w)/WIDTH), math.floor(tonumber(h)/HEIGHT)))
end

local webscaletimer = 0.5
function updatewebscale(dt)
    webscaletimer = webscaletimer + dt
    if webscaletimer < 0.5 then
        return
    end
    webscaletimer = 0
    local s = webscale()
    if s ~= SCALE then
        SCALE = s
        love.window.setMode(WIDTH*SCALE, HEIGHT*SCALE)
    end
end

function love.keypressed(key)
    if ESCTOQUIT then
        if key == "escape" then
            love.event.quit()
        end
    end

    if FRAMEDEBUG then
        if key == "#" then
            frameDebug3.frameAdvance()
        end

        if key == "pause" then
            frameDebug3.pausePlay()
        end
    end
end
