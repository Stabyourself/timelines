local Level = class("Level")

local bump = require "lib.bump"
local sti = require "lib.sti"
local camera = require "lib.camera"

local Player = require "class.Player"
local Key = require "class.Key"

local tiny = require "lib.tiny"

local allSystems = require "systemLoader"

function Level:initialize(path)
    self.world = bump.newWorld()
    self.world.level = self -- I never know if this is good code
    self.map = sti(path, {"bump"})
    self.map:bump_init(self.world)

    self.ecs = tiny.world(unpack(allSystems))

    -- load objects
    self.entities = {}

    for _, object in ipairs(self.map.layers.markers.objects) do
        local type = object.type
        inspect(type)

        if type == "start" then
            local player = Player:new(self, object.x, object.y)
            table.insert(self.entities, player)

            self.ecs:addEntity(player)
            self.cameraFocus = player
        end

        if type == "key" then
            local key = Key:new(self, object.x, object.y)
            table.insert(self.entities, key)

            self.ecs:addEntity(key)
        end
    end

    self.camera = camera()
    self.camera:lookAt(self.cameraFocus.x+self.cameraFocus.w/2, self.cameraFocus.y+self.cameraFocus.h/2)
    self.camera:zoomTo(3)
end

function Level:update(dt)
    self.ecs:update(dt)

    -- camera
    self.camera:lockWindow(
        self.cameraFocus.x+self.cameraFocus.w/2,
        self.cameraFocus.y+self.cameraFocus.h/2,
        love.graphics.getWidth()*0.5 - 100,
        love.graphics.getWidth()*0.5 + 100,
        love.graphics.getHeight()*0.5 - 50,
        love.graphics.getHeight()*0.5 + 50,
        camera.smooth.damped(dt, 10)
    ) --todo: some kind of SMW camera thing maybe
end

function Level:draw()
    self.camera:attach()

    self.map:drawLayer(self.map.layers.world)

    for _, entity in ipairs(self.entities) do
        entity:draw()
    end

    -- debug
    if DEBUG then
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

return Level
