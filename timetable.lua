local Button = require "class.Button"
local anim8 = require "lib.anim8"
local Node = require "class.Node"
local Color3 = require "lib.Color3"

timetable = gamestate.new()

local textForeground = Color3.fromOldRGB(168, 150, 142)
local textBackground = Color3.fromOldRGB(93, 70, 98)

local timetable_title = love.graphics.newImage("img/title.png")

local timetable_back = love.graphics.newImage("img/timetable_back.png")

local timetableNode = love.graphics.newImage("img/timetable_node.png")
local timetableNodeSelected = love.graphics.newImage("img/timetable_node_selected.png")
local timetableNodeActive = love.graphics.newImage("img/timetable_node_active.png")
local timetableNodeEnded = love.graphics.newImage("img/timetable_node_ended.png")
local timetableNodeObandoned = love.graphics.newImage("img/timetable_node_abandoned.png")
local timetableNodeOverlay = love.graphics.newImage("img/timetable_node_overlay.png")

local grid = anim8.newGrid(18, 18, timetableNode:getWidth(), timetableNode:getHeight())
local nodeAnimation = anim8.newAnimation(grid("1-4", 1), 0.1)
local nodeAnimationActive = anim8.newAnimation(grid("1-4", 1), 0.05)

local timelineHeight = 18
local timelineSecondWidth = 2

function timetable:init()
    timetable.timelines = 0

    self.nodeLocations = {}

    self.buttons = {
        Button:new(self, 20, 200, 121, 20, "Start from here", function() game:startOnNode(self.selectedNode); self:close() end),
        Button:new(self, WIDTH-60, 200, 40, 20, "Back", function() self:close() end),
    }

    self.buttons[1].disabled = true







    if DEBUG then
        -- create some fake nodes for visual testing
        for i = 0, 2 do
            local node = Node:new(game.rootNode, i)
            node.nodeTime = love.math.random(60, 150)
        end

        local node = Node:new(game.rootNode.children[1], 0)
        node.ended = true
        node.nodeTime = love.math.random(60, 150)

        for i = 3, 4 do
            local node = Node:new(game.rootNode.children[1], i)
            node.nodeTime = love.math.random(60, 150)

            game.activeNode = node
        end
    end
end

function timetable:enter(from, booted)
    self.selectedNode = nil
    self.booted = booted or false
    self.from = from
    self.offY = 0

    if self.from == game and not booted then
        self.offY = 225
        timer.tween(0.3, self, {offY = 0}, 'out-quad')
    end

    self.buttons[2].disabled = booted
end

function timetable:update(dt)
    nodeAnimation:update(dt)
    nodeAnimationActive:update(dt)

    if not self.booted and controls:pressed("closetimeline") then
        self:close()
    end
end

function timetable:draw()
    if self.from == game then
        self.from:draw()
    end

    love.graphics.push()
    love.graphics.translate(0, self.offY)

    love.graphics.draw(timetable_back)

    love.graphics.draw(timetable_title, (WIDTH-timetable_title:getWidth())*.5, 2)

    self.nodeLocations = {}

    love.graphics.push()
    love.graphics.translate(16, 32)

    self:drawNodeAndChildren(game.rootNode, 16, 16)

    love.graphics.pop()

    for _, button in ipairs(self.buttons) do
        button:draw()
    end

    -- intro text stuff

    if self.booted then
        local t = "A game by Maurice and Hans\n\nSelect the node in the top left to start"
        love.graphics.setColor(textBackground:rgb())
        love.graphics.printf(t, 0, 61, WIDTH, "center")

        love.graphics.setColor(textForeground:rgb())
        love.graphics.printf(t, 0, 60, WIDTH, "center")

        love.graphics.setColor(1, 1, 1)
    end

    love.graphics.pop()
end

function timetable:getMousePosition()
    local x, y = love.mouse.getPosition()

    x = x/SCALE
    y = y/SCALE-self.offY

    return x, y
end

function timetable:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    for _, button in ipairs(self.buttons) do
        button:mousepressed(x, y)
    end

    y = y - 16

    for _, nodeLocation in ipairs(self.nodeLocations) do
        if x > nodeLocation.x and x <= nodeLocation.x+18 and y > nodeLocation.y and y <= nodeLocation.y+18 then
            self.selectedNode = nodeLocation.node
            self.buttons[1].disabled = false
        end
    end
end

function timetable:mousereleased(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    for _, button in ipairs(self.buttons) do
        button:mousereleased(x, y)
    end
end

function timetable:close()
    local function backToGame()
        gamestate.pop()
    end

    timer.tween(0.3, self, {offY = 255}, 'out-quad', backToGame)
end



function timetable:drawNodeAndChildren(node, x, y)
    for i, childNode in ipairs(node.children) do
        if childNode.nodeTime > 0 then
            local nodeTimeOffset = childNode.nodeTime
            local timelineOffset = childNode.timeline - node.timeline

            local w = math.floor(nodeTimeOffset*timelineSecondWidth)
            local h = timelineHeight*timelineOffset

            local isVerticalStart = (i == 2)
            local isVerticalEnd = (i == #node.children)

            self:drawSandLine(0, 0, w, h, isVerticalStart, isVerticalEnd)

            love.graphics.push()
            love.graphics.translate(w, h)

            self:drawNodeAndChildren(childNode, x+w, y+h)

            love.graphics.pop()
        end
    end

    local img = timetableNode
    local animation = nodeAnimation
    local clickable = true

    if node == self.selectedNode then
        img = timetableNodeSelected
        animation = nodeAnimationActive
    elseif node == game.activeNode then
        img = timetableNodeActive
        animation = nil
        clickable = false
    elseif node.ended then
        img = timetableNodeEnded
        animation = nil
        clickable = false
    end

    if animation then
        animation:draw(img)
    else
        love.graphics.draw(img)
    end

    if clickable then
        love.graphics.draw(timetableNodeOverlay)
        table.insert(self.nodeLocations, {node=node, x=x, y=y})
    end
end

local lineVerticalTop = love.graphics.newImage("img/timetable_line_vertical_top.png")
local lineVertical = love.graphics.newImage("img/timetable_line_vertical.png")
lineVertical:setWrap("repeat")
local lineVerticalQuad = love.graphics.newQuad(0, 0, 18, 18, 18, 18)

local lineHorizontalLeft = love.graphics.newImage("img/timetable_line_horizontal_left.png")
local lineHorizontalLeftCorner = love.graphics.newImage("img/timetable_line_horizontal_left_corner.png")
local lineHorizontalLeftT = love.graphics.newImage("img/timetable_line_horizontal_left_t.png")
local lineHorizontalRight = love.graphics.newImage("img/timetable_line_horizontal_right.png")
local lineHorizontal = love.graphics.newImage("img/timetable_line_horizontal.png")

lineHorizontal:setWrap("repeat")
local lineHorizontalQuad = love.graphics.newQuad(0, 0, 36, 18, 36, 18)

function timetable:drawSandLine(x, y, w, h, isVerticalStart, isVerticalEnd)
    -- vertical
    if isVerticalStart then
        if h > 18 then
            -- top
            love.graphics.draw(lineVerticalTop, x, y+18)

            -- vertical
            lineHorizontalQuad:setViewport(0, 0, 18, h-18)
            love.graphics.draw(lineVertical, lineVerticalQuad, x, y+36)
        end
    end

    local middleW = w-36
    local middleX = 0
    if h == 0 then
        middleW = w-54
        middleX = 18
        -- left
        love.graphics.draw(lineHorizontalLeft, x+18, y+h)
    else
        if isVerticalEnd then
            -- left corner
            love.graphics.draw(lineHorizontalLeftCorner, x, y+h)
        else
            -- left T
            love.graphics.draw(lineHorizontalLeftT, x, y+h)
        end
    end

    -- horizontal
    lineHorizontalQuad:setViewport(0, 0, middleW, 18)
    love.graphics.draw(lineHorizontal, lineHorizontalQuad, x+18+middleX, y+h)

    -- bullshit right alignment math
    local yOff = -math.sin(middleW%36/36*math.pi*2+math.pi*.5)+1

    -- right
    love.graphics.draw(lineHorizontalRight, x+w-18, y+h+yOff)
end
