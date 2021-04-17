local Node = require "class.Node"
local FlowController3 = require "lib.FlowController3"
game = gamestate.new()

local Level = require "class.Level"

local keyUi = love.graphics.newImage("img/key_ui.png")
local keyUiMeta = love.graphics.newImage("img/key_ui_meta.png")
local bossHpImg = love.graphics.newImage("img/boss_hp.png")

function game:init()
    self.metaState = {
        state = {},
        keyCount = 0,
        sand = 0.25,
        bossHp = 3
    }
    self.rootNode = Node:new(nil, 0, 1)

    self.level = Level:new(self, "levels/level1.lua")

    self.rootNode.state = self.level:makeState()
    self.bossActive = false
end

function game:enter(previous)

end

function game:resume()
    if self.spawnAnimation then
        -- spawn flow controller
        local flow = FlowController3:new()
        table.insert(flowControllers, flow)

        local playerEntities

        -- shard creation
        flow:addCall(function() playerEntities = self.level.player:startSpawnAnimation() end)
        flow:addCall(function() self.level.player:disableControls() end)

        flow:addWait(1.3)

        flow:addCall(function()
            for _, entity in ipairs(playerEntities) do
                entity.removeMe = true
            end
        end)

        -- glowing
        flow:addCall(function() self.level.player:startGlowing() end)

        -- drop
        flow:addCall(function() self.level.player:stopGlowing() end)
        flow:addCall(function() self.level.player.visible = true end)
        flow:addCall(function() self.level.player.gravity = nil end)
        flow:addCondition(function() return self.level.player.onGround end)

        -- flow:addWait(0.1)
        -- start
        flow:addCall(function() self.level.player:enableControls() end)

        self.spawnAnimation = false
    end
end


function game:update(dt)
    self.level:update(dt)

    if self.level.player.controlsEnabled then
        if self.level.player.active then
            self.activeNode.nodeTime = self.activeNode.nodeTime + dt
        end

        local shrine = self.level.player:nearShrine()
        if controls:pressed("use") and shrine then
            self:useShrine(shrine)
        end
    end
end

function game:draw()
    self.level:draw()

    love.graphics.push()

    -- UI!
    love.graphics.translate(4, 4)

    love.graphics.draw(keyUiMeta, 0, 0)
    printShadow(0.1, 0.1, 0.1, "x", 16, 1)
    printfShadow(0.1, 0.1, 0.1, self.metaState.keyCount, 24, 1, 10, "center")

    love.graphics.draw(keyUi, 0, 16)
    printShadow(0.1, 0.1, 0.1, "x", 16, 17)
    printfShadow(0.1, 0.1, 0.1, self.level.player.keyCount, 24, 17, 10, "center")

    love.graphics.pop()

    -- boss hp
    if self.bossActive then
        love.graphics.push()

        love.graphics.translate(150, 20)
        printShadow(0.1, 0.1, 0.1, "BOSS", 0, 0)

        for i = 1, self.metaState.bossHp do
            love.graphics.draw(bossHpImg, (i-1)*24+30, 0)
        end

        love.graphics.pop()
    end
end

function game:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    self.level:mousepressed(x, y)
end

function game:die()
    self.activeNode.ended = true
    self.activeNode.died = true

    -- death flow controller
    local flow = FlowController3:new()
    table.insert(flowControllers, flow)

    local playerEntities

    -- shard creation
    flow:addCall(function() self.level.player:startDeathAnimation() end)

    flow:addWait(1)

    flow:addCall(function() self.level.player:explodeAnimation() end)

    flow:addWait(2.5)

    flow:addCall(function() gamestate.push(timetable, false, false) end)
end

function game:useShrine(shrine)
    if not shrine.used then
        shrine:use()

        -- make new state
        self.activeNode.state = self.level:makeState()

        local node = Node:new(self.activeNode, self.activeNode.timeline)

        self.activeNode = node
    else
        gamestate.push(timetable, false, true)
    end
end

function game:startOnNode(parentNode)
    if self.activeNode then
        self.activeNode.ended = true
    end

    local timeline = parentNode.timeline

    if #parentNode.children > 0 then
        timetable.timelines = timetable.timelines + 1
        timeline = timetable.timelines
    end

    local node = Node:new(parentNode, timeline)

    self.activeNode = node

    self:updatemetaState()
    self.level:clear()
    self.level:loadState(parentNode.state.entities)
    self.level:applyState(self.metaState.entities)

    if not SKIPSPAWNANIMATION then
        self.level.player.visible = false
        self.spawnAnimation = true
    end
end

function game:updatemetaState()
    self.metaState.entities = {}

    for _, entity in ipairs(self.level.entities) do
        if entity.meta then -- only store meta items
            table.insert(self.metaState.entities, entity:toState())
        end
    end
end

function game:hurtBoss()
    self.metaState.bossHp = self.metaState.bossHp - 1
    if self.metaState.bossHp == 0 then
        timer.after(1.5, function()
            gamestate.push(endScreen)
        end)
    end
end
