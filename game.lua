local Node = require "class.Node"
game = gamestate.new()

local Level = require "class.Level"

function game:init()
    self.transcendentState = {
        state = {},
        keys = 0,
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

    local altar = self.level.player:nearAltar()
    if controls:pressed("use") and altar then
        self:useAltar(altar)
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
    love.graphics.print("Keys: " .. self.level.player.keyCount)
    love.graphics.pop()
end

function game:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    self.level:mousepressed(x, y)
end

function game:die()
    self.activeNode.ended = true
end

function game:useAltar(altar)
    if not altar.used then
        altar:use()

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
        timeline = timetable.timelines
        timetable.timelines = timetable.timelines + 1
    end

    local node = Node:new(parentNode, timeline)

    self.activeNode = node

    self:updateTranscendentState()
    self.level:clear()
    self.level:loadState(parentNode.state.entities)
    self.level:loadState(self.transcendentState.entities)
end

function game:updateTranscendentState()
    self.transcendentState.entities = {}

    for _, entity in ipairs(self.level.entities) do
        if entity.transcendent then -- only store transcendent items
            table.insert(self.transcendentState.entities, entity:toState())
        end
    end
end
