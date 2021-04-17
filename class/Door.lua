local Entity = require "class.Entity"
local Door = class("Door", Entity)
local anim8 = require "lib.anim8"

local doorImg = love.graphics.newImage("img/door.png")
local doorImgMeta = love.graphics.newImage("img/door_meta.png")
local doorGrid = anim8.newGrid(8, 32, doorImg:getWidth(), doorImg:getHeight())

local lockImg = love.graphics.newImage("img/door_lock.png")
local lockImgMeta = love.graphics.newImage("img/door_lock_meta.png")
local lockImgTriggered = love.graphics.newImage("img/sand_lock.png")
local lockGrid = anim8.newGrid(32, 32, lockImg:getWidth(), lockImg:getHeight())

combineArrays(Door.serializeTable, {
    "meta",
    "triggered",
})

function Door:initialize(level, x, y)
    Entity.initialize(self, level, x, y, 8, 32)

    self.doorAnimation = anim8.newAnimation(doorGrid("1-5", 1), 0.1, function() self.doorAnimation:pauseAtEnd() end)
    self.playDoorAnimation = false

    self.lockAnimation = anim8.newAnimation(lockGrid("1-8", 1), 0.1, function() self.lockAnimation:pauseAtEnd() end)
    self.playLockAnimation = false
end

function Door:update(dt)
    if self.playDoorAnimation then
        self.doorAnimation:update(dt)
    end

    if self.playLockAnimation then
        self.lockAnimation:update(dt)
    end
end

function Door:postAdd()
    self.img = doorImg
    self.lockImg = lockImg

    if self.meta then
        self.img = doorImgMeta
        self.lockImg = lockImgMeta
    end

    if self.triggered then
        self.lockImg = lockImgTriggered
    end

    Entity.postAdd(self)
end

function Door:draw()
    self.doorAnimation:draw(self.img, self.x, self.y)
    self.lockAnimation:draw(self.lockImg, self.x-12, self.y)
end

function Door:open()
    soundManager3.play("doorOpen")
    self:removeFromWorld()

    self.playLockAnimation = true
    self.lockAnimation:gotoFrame(2)

    timer.after(0.1, function()
        self.playDoorAnimation = true
    end)

    timer.after(1, function()
        self:queueRemove()
    end)
end

return Door
