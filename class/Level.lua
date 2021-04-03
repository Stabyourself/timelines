local Level = class("Level")

local bump = require "lib.bump"
local sti = require "lib.sti"
local camera = require "lib.camera"

local Player = require "class.Player"
local Key = require "class.Key"
local Door = require "class.Door"

local tiny = require "lib.tiny"

local allSystems = require "systemLoader"

function Level:initialize(path)
    self.world = bump.newWorld()
    self.world.level = self -- I never know if this is good code
    self.map = sti(path, {"bump"})
    self.map:bump_init(self.world)

    local r, g, b = unpack(self.map.backgroundcolor)
    love.graphics.setBackgroundColor(r/255, g/255, b/255)

    self.ecs = tiny.world(unpack(allSystems))

    -- load objects
    self.entities = {}

    for _, object in ipairs(self.map.layers.markers.objects) do
        local type = self.map.tiles[object.gid].type

        if type == "start" then
            self.player = Player:new(self, object.x, object.y)
            table.insert(self.entities, self.player)

            self.ecs:addEntity(self.player)
            self.cameraFocus = self.player
        end

        if type == "key" then
            local key = Key:new(self, object.x, object.y, object.properties.transcendent)
            table.insert(self.entities, key)

            self.ecs:addEntity(key)
        end

        if type == "door" then
            local door = Door:new(self, object.x, object.y, object.properties.transcendent)
            table.insert(self.entities, door)

            self.ecs:addEntity(door)
        end
    end

    self.camera = camera()
    self.camera:lookAt(self.cameraFocus.x+self.cameraFocus.w/2, self.cameraFocus.y+self.cameraFocus.h/2)
    self.camera:zoomTo(SCALE)
end

function Level:update(dt)
    self.ecs:update(dt)

    for i = #self.entities, 1, -1 do
        local v = self.entities[i]

        if v.removeMe then
            v:remove()
            table.remove(self.entities, i, i)
        end
    end

    -- camera
    if controls:pressed("camera") then
        self.cameraFocus = false
    end

    if self.cameraFocus then
        self.camera:lockWindow(
            self.cameraFocus.x+self.cameraFocus.w/2,
            self.cameraFocus.y+self.cameraFocus.h/2,
            love.graphics.getWidth()*0.5 - 100,
            love.graphics.getWidth()*0.5 + 100,
            love.graphics.getHeight()*0.5 - 50,
            love.graphics.getHeight()*0.5 + 50,
            camera.smooth.damped(dt, 10)
        ) --todo: some kind of SMW camera thing maybe
    else
        local x, y = controls:get("camera")
        self.camera.x = self.camera.x + x*dt*400
        self.camera.y = self.camera.y + y*dt*400
    end
end

function Level:draw()
    self.camera:attach()

    self.map:drawLayer(self.map.layers.world)

    for _, entity in ipairs(self.entities) do
        entity:draw()
    end

    -- debug
    if DEBUG then
        love.graphics.setColor(1, 1, 1, 0.4)
        self.map:drawLayer(self.map.layers.markers)
        love.graphics.setColor(1, 0, 0)
        love.graphics.push()
        love.graphics.translate(0.5, 0.5)

        for _, item in ipairs(self.world:getItems()) do
            love.graphics.rectangle("line", self.world:getRect(item))
        end

        love.graphics.pop()
        love.graphics.setColor(1, 1, 1)
    end

    self.camera:detach()
end

function Level:mousepressed(x, y, button)
    local wx, wy = self.camera:worldCoords(x, y)
    self.player.x = wx
    self.player.y = wy
    self.player.vx = 0
    self.player.vy = 0
    self.world:update(self.player, wx, wy)
end

return Level
