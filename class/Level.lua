local Level = class("Level")

local bump = require "lib.bump"
local sti = require "lib.sti"
local camera = require "lib.camera"

local Player = require "class.Player"
local Key = require "class.Key"
local Door = require "class.Door"
local Altar = require "class.Altar"

local tiny = require "lib.tiny"

local allSystems = require "systemLoader"

function Level:initialize(gamestate, path)
    self.gamestate = gamestate

    self.world = bump.newWorld(32)
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
            self.player = Player:new(self, object.x+2, object.y-14)
            table.insert(self.entities, self.player)
        end

        if type == "key" then
            table.insert(self.entities, Key:new(self, object.x+1, object.y-12, object.properties.transcendent))
        end

        if type == "door" then
            table.insert(self.entities, Door:new(self, object.x+4, object.y-32, object.properties.transcendent))
        end

        if type == "altar" then
            table.insert(self.entities, Altar:new(self, object.x, object.y-64))
        end
    end

    self.camera = camera()
    self.cameraFocus = self.player
    self.camera:lookAt(self.cameraFocus.x+self.cameraFocus.w/2, self.cameraFocus.y+self.cameraFocus.h/2)
    self.ecs:update(0)
end

function Level:update(dt)
    -- print("ents",self.ecs:getEntityCount())
    self.ecs:update(dt)

    for i = #self.entities, 1, -1 do
        local v = self.entities[i]

        if v.removeMe then
            v:remove()
            table.remove(self.entities, i)
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
            WIDTH*0.5 - 50,
            WIDTH*0.5 + 50,
            HEIGHT*0.5 - 30,
            HEIGHT*0.5 + 30,
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
        if entity ~= self.player then
            entity:draw()
        end
    end

    -- draw player last
    self.player:draw()

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
    self.cameraFocus = self.player
end

function Level:getEntities(entityClass)
    local t = {}

    for _, entity in ipairs(self.entities) do
        if entity:isInstanceOf(entityClass) then
            table.insert(t, entity)
        end
    end

    return t
end

function Level:makeState()
    local state = {
        entities = {}
    }

    for _, entity in ipairs(self.entities) do
        table.insert(state.entities, entity:toState())
    end

    return state
end

function Level:loadState(state)
    -- remove all ecs from the world
    self.ecs:clearEntities()

    -- -- remove all entity collisions from the world
    for _, entity in ipairs(self.entities) do
        if self.world:hasItem(entity) then
            self.world:remove(entity)
        end
    end

    self.entities = {}

    for _, entity in ipairs(state.entities) do
        table.insert(self.entities, entity.class.fromState(self, entity))
    end

    self.player = self:getEntities(Player)[1]
    self.cameraFocus = self.player
end


return Level
