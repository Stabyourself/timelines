local Background = require "class.Background"
local Box = require "class.Box"
local MovingPlatform = require "class.MovingPlatform"
local Level = class("Level")

local bump = require "lib.bump"
local sti = require "lib.sti"
local camera = require "lib.camera"

local Player = require "class.Player"
local Key = require "class.Key"
local Door = require "class.Door"
local Shrine = require "class.Shrine"
local ArrowShooter = require "class.ArrowShooter"
local SandUpgrade = require "class.SandUpgrade"
local Trigger = require "class.Trigger"

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

    local startX, startY

    for _, object in ipairs(self.map.layers.markers.objects) do
        local type = self.map.tiles[object.gid].type

        if type == "start" then
            startX, startY = object.x+2, object.y-14
        end

        if type == "key" then
            local key = Key:new(self, object.x+1, object.y-13)
            key.meta = object.properties.meta
            key.id = object.id

            self:addEntity(key)
        end

        if type == "door" then
            local door = Door:new(self, object.x+4, object.y-32)
            door.meta = object.properties.meta
            door.id = object.id
            door.triggered = object.properties.triggered

            self:addEntity(door)
        end

        if type == "shrine" then
            local shrine = Shrine:new(self, object.x, object.y-63)
            shrine.used = object.properties.used
            shrine.id = object.id

            self:addEntity(shrine)
        end

        if type == "arrow-shooter" then
            local arrowShooter = ArrowShooter:new(self, object.x, object.y)

            arrowShooter.dir = object.properties.dir or "right"
            arrowShooter.entitySpawnTime = object.properties.spawnTime or 2
            arrowShooter.id = object.id

            self:addEntity(arrowShooter)
        end

        if type == "box" then
            local w, h = object.width, object.height

            local box = Box:new(self, object.x, object.y-h)

            box.w = w
            box.h = h
            box.meta = object.properties.meta
            box.id = object.id

            self:addEntity(box)
        end

        if type == "moving-platform" then
            local movingPlatform = MovingPlatform:new(self, object.x, object.y-16)
            movingPlatform.differenceX = object.properties.differenceX or 0
            movingPlatform.differenceY = object.properties.differenceY or 0

            movingPlatform.moveTimes = {
                object.properties.travelTime or 2,
                object.properties.waitTime or 1,
                object.properties.travelTime or 2,
                object.properties.waitTime or 1,
            }

            movingPlatform.w = object.width
            movingPlatform.h = object.height
            movingPlatform.id = object.id


            self:addEntity(movingPlatform)
        end

        if type == "sand-upgrade" then
            local sandUpgrade = SandUpgrade:new(self, object.x+1, object.y-13)
            sandUpgrade.id = object.id

            self:addEntity(sandUpgrade)
        end

        if type == "trigger" then
            local trigger = Trigger:new(self, object.x+4, object.y-10)
            trigger.target = object.properties.target.id
            trigger.id = object.id

            self:addEntity(trigger)
        end
    end

    self.player = Player:new(self, startX, startY)
    table.insert(self.entities, 1, self.player)

    self.camera = camera()
    self.cameraFocus = self.player
    self.camera:lookAt(self.cameraFocus.x+self.cameraFocus.w/2, self.cameraFocus.y+self.cameraFocus.h/2)
    self.ecs:update(0)

    self.particles = {}

    -- background
    self.background = Background:new({{},{},{},{},{},{},{},{},{},{}}, "img/background/")

    -- self:updateSpritebatches()
end

function Level:updateSpritebatches()
    local sx, sy = self.map:convertPixelToTile(self.camera:worldCoords(0, 0))
    sx, sy = math.floor(sx)+1, math.floor(sy)+1

    sx = math.max(1, sx)
    sy = math.max(1, sy)

    if not self.cullX or sx ~= self.cullX or sy ~= self.cullY then
        local ex = math.ceil(sx + WIDTH/16)
        local ey = math.ceil(sy + HEIGHT/16)

        self.map:set_batches(self.map.layers[1], nil, sx, sy, ex, ey)

        self.cullX = sx
        self.cullY = sy
    end
end

function Level:update(dt)
    self.ecs:update(dt)

    updateGroup(self.entities, dt)
    updateGroup(self.particles, dt)

    -- camera

    local oldY = self.camera.y

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
    end

    if FREECAM then
        if controls:pressed("camera") then
            self.cameraFocus = false
        end

        local x, y = controls:get("camera")
        self.camera.x = self.camera.x + x*dt*2000
        self.camera.y = self.camera.y + y*dt*2000
    end
    -- self:updateSpritebatches()

    self.background:moveTo(self.camera.x)
    self.background:moveY(self.camera.y-oldY)
    self.background:update(dt)
end

function Level:draw()
    self.background:draw()
    self.camera:attach()

    self.map:drawLayer(self.map.layers.world)

    for _, entity in ipairs(self.entities) do
        if entity ~= self.player then
            entity:draw()
        end
    end

    -- draw player last
    self.player:draw()

    -- particles
    for _, particle in ipairs(self.particles) do
        particle:draw()
    end

    -- debug
    if PHYSICSDEBUG then
        love.graphics.setColor(1, 1, 1, 0.4)
        self.map:drawLayer(self.map.layers.markers)
        love.graphics.setColor(1, 0, 0, 0.5)
        love.graphics.push()
        love.graphics.translate(0.5, 0.5)

        for _, item in ipairs(self.world:getItems()) do
            local x, y, w, h = self.world:getRect(item)
            w = w - 1
            h = h - 1
            love.graphics.rectangle("line", x, y, w, h)
        end

        love.graphics.pop()
        love.graphics.setColor(1, 1, 1)
    end

    self.camera:detach()
end

function Level:mousepressed(x, y, button)
    if TELEPORT and self.world:hasItem(self.player) then
        local wx, wy = self.camera:worldCoords(x, y)
        self.player.x = wx
        self.player.y = wy
        self.player.vx = 0
        self.player.vy = 0
        self.world:update(self.player, wx, wy)
        self.cameraFocus = self.player
    end
end

function Level:addEntity(entity)
    table.insert(self.entities, entity)

    return entity
end

function Level:addParticleInRect(x, y, w, h, particleClass)
    local px = love.math.random(x, x+w)
    local py = love.math.random(y, y+h)

    table.insert(self.particles, particleClass:new(px, py))
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

function Level:getEntityById(id)
    for _, entity in ipairs(self.entities) do
        if entity.id == id then
            return entity
        end
    end
end

function Level:makeState()
    local state = {
        entities = {}
    }

    for _, entity in ipairs(self.entities) do
        if not entity.meta and not entity.noState then -- meta items are stored differently
            table.insert(state.entities, entity:toState())
        end
    end

    return state
end

function Level:clear()
    -- remove all ecs from the world
    self.ecs:clearEntities()

    -- -- remove all entity collisions from the world
    for _, entity in ipairs(self.entities) do
        if self.world:hasItem(entity) then
            self.world:remove(entity)
        end
    end

    self.entities = {}
end

function Level:applyState(entities)
    for _, entity in ipairs(entities) do
        local newEntity = entity.class.fromState(self, entity)

        newEntity:postAdd()

        table.insert(self.entities, newEntity)
    end
end

function Level:loadState(entities)
    self:applyState(entities)

    self.player = self:getEntities(Player)[1]
    self.cameraFocus = self.player
    self.camera:lookAt(self.cameraFocus.x+self.cameraFocus.w/2, self.cameraFocus.y+self.cameraFocus.h/2)
    self.background:moveTo(self.camera.x)
end


return Level
