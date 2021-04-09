local Node = require "class.Node"
game = gamestate.new()

local Level = require "class.Level"

local keyUi = love.graphics.newImage("img/key_ui.png")
local keyUiMeta = love.graphics.newImage("img/key_ui_meta.png")

function game:init()
    self.metaState = {
        state = {},
        keyCount = 0,
    }
    self.rootNode = Node:new(nil, 0, 1)

    self.level = Level:new(self, "levels/level1.lua")

    self.rootNode.state = self.level:makeState()
end

function game:enter(previous)

end

function game:update(dt)
    self.level:update(dt)

    if self.level.player.active then
        self.activeNode.nodeTime = self.activeNode.nodeTime + dt
    end

    local shrine = self.level.player:nearShrine()
    if controls:pressed("use") and shrine then
        self:useShrine(shrine)
    end

    if controls:pressed("debug1") then
        -- gamestate.push(timetable)
        self.level:serialize()
    end
end

function game:draw()
    self.level:draw()

    love.graphics.push()

    -- UI!
    love.graphics.translate(4, 4)
    love.graphics.draw(keyUi, 0, 0)
    love.graphics.print("x", 16, 1)
    love.graphics.printf(self.level.player.keyCount, 24, 1, 10, "center")

    love.graphics.draw(keyUiMeta, 0, 16)
    love.graphics.print("x", 16, 17)
    love.graphics.printf(self.metaState.keyCount, 24, 17, 10, "center")

    love.graphics.pop()
end

function game:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    self.level:mousepressed(x, y)
end

function game:die()
    self.activeNode.ended = true
    gamestate.push(timetable)
end

function game:useShrine(shrine)
    if not shrine.used then
        shrine:use()

        -- make new state
        self.activeNode.state = self.level:makeState()

        local node = Node:new(self.activeNode, self.activeNode.timeline)

        self.activeNode = node
    else
        gamestate.push(timetable)
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
    self.level:loadState(self.metaState.entities)
end

function game:updatemetaState()
    self.metaState.entities = {}

    for _, entity in ipairs(self.level.entities) do
        if entity.meta then -- only store meta items
            table.insert(self.metaState.entities, entity:toState())
        end
    end
end
