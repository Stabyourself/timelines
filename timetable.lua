local Button = require "class.Button"
local anim8 = require "lib.anim8"
local Node = require "class.Node"
local Color3 = require "lib.Color3"
local camera = require "lib.camera"

timetable = gamestate.new()

local textForeground = Color3.fromOldRGB(168, 150, 142)
local textBackground = Color3.fromOldRGB(93, 70, 98)

local titleImg = love.graphics.newImage("img/title.png")

local settingsIcon = love.graphics.newImage("img/settings.png")

local timetableBack = love.graphics.newImage("img/timetable/back.png")
local timetableOverlay = love.graphics.newImage("img/timetable/overlay.png")

local timetableNode = love.graphics.newImage("img/timetable/node.png")
local timetableNodeSelected = love.graphics.newImage("img/timetable/node_selected.png")
local timetableNodeActive = love.graphics.newImage("img/timetable/node_active.png")
local timetableNodeDied = love.graphics.newImage("img/timetable/node_died.png")
local timetableNodeWarped = love.graphics.newImage("img/timetable/node_warped.png")
local timetableNodeOverlay = love.graphics.newImage("img/timetable/node_overlay.png")
local timetableNodeOverlayHighlight = love.graphics.newImage("img/timetable/node_overlay_highlight.png")

local grid = anim8.newGrid(18, 18, timetableNode:getWidth(), timetableNode:getHeight())
local nodeAnimation = anim8.newAnimation(grid("1-4", 1), 0.1)
local nodeAnimationActive = anim8.newAnimation(grid("1-4", 1), 0.05)


local timelineHeight = 18
local timelineSecondWidth = 4

function timetable:init()
    timetable.timelines = 0

    self.nodeLocations = {}

    self.buttons = {
        Button:new(self, 15, 200, nil, 20, "Start from here", function() self:startOnNode(self.selectedNode) end),
        Button:new(self, WIDTH-83, 200, nil, 20, "Back", function() self:backButton() end),
        Button:new(self, WIDTH-35, 200, 20, 20, settingsIcon, function()  end),
    }
    self.buttons[3].disabled = true

    self.camera = camera()
    self.camera:lookAt(9, 9)

    self.crosshairEnabled = false


    if TIMETABLEDEBUG then
        -- create some fake nodes for visual testing
        for i = 0, 2 do
            local node = Node:new(game.rootNode, i)
            node.nodeTime = love.math.random(60, 150)
        end

        local node = Node:new(game.rootNode.children[1], 0)
        node.ended = true
        node.nodeTime = love.math.random(60, 150)

        for i = 5, 6 do
            local node = Node:new(game.rootNode.children[1], i)
            node.nodeTime = love.math.random(60, 150)
        end

        local node = Node:new(game.rootNode.children[1].children[#game.rootNode.children[1].children-1], 5)
        node.ended = true
        node.nodeTime = love.math.random(60, 150)

        for i = 8, 9 do
            local node = Node:new(game.rootNode, i)
            node.nodeTime = love.math.random(60, 150)
            game.activeNode = node
        end

        for i = 10, 11 do
            local node = Node:new(game.rootNode.children[1].children[2], i)
            node.nodeTime = love.math.random(60, 150)
        end
    end
end

function timetable:enter(from, booted, allowBack)
    -- note: nodes should not be changed during this gamestate, because their position is cached.


    self.closing = false
    self.selectedNode = nil
    self.booted = booted or false
    self.from = from
    self.offY = 0

    if self.from == game and not booted then
        self.offY = -255
        timer.tween(0.3, self, {offY = 0}, 'out-quad', function()
             self.offY = 0
             self.backButtonEnabled = allowBack
             self.buttons[2].disabled = not self.backButtonEnabled
        end)
    end

    self.buttons[1].disabled = true
    self.buttons[2].disabled = true
    self.dragging = false

    self.nodeTable = self:buildNodeTable()

    self.panWindow = {9, 9, 9, 9}

    for _, node in ipairs(self.nodeTable) do
        if node.x+9 > self.panWindow[3] then
            self.panWindow[3] = node.x+9
        end

        if node.y+9 > self.panWindow[4] then
            self.panWindow[4] = node.y+9
        end

        if node.node == game.activeNode then
            -- focus on the active node
            self.camera:lookAt(node.x+9, node.y+9)
        end
    end
end

function timetable:update(dt)
    nodeAnimation:update(dt)
    nodeAnimationActive:update(dt)

    -- controller controls
    local x, y = controls:get("movement")

    if x ~= 0 or y ~= 0 then
        self.crosshairEnabled = true

        x = x*dt*300
        y = y*dt*300

        self:moveCamera(x, y)
    end

    local zoom = controls:get("zoomin") - controls:get("zoomout")

    zoom = zoom * dt * 20

    self:zoomCamera(1.1^zoom)

    if controls:pressed("nodeselection") then
        self:nodeWindowPress(self.camera.x, self.camera.y, true)
    end

    if controls:pressed("backbutton") then
        self:backButton()
    end
end

function timetable:draw()
    if self.offY ~= 0  and self.from == game then
        self.from:draw()
    end

    love.graphics.push()
    love.graphics.translate(0, self.offY)

    love.graphics.draw(timetableBack)

    love.graphics.push()
    self.camera:attach()

    for _, node in ipairs(self.nodeTable) do
        self:drawSand(node)
    end

    for _, node in ipairs(self.nodeTable) do
        self:drawNode(node)
    end

    self.camera:detach()
    love.graphics.pop()

    -- intro text stuff

    if self.booted then
        local r, g, b = textBackground:rgb()
        love.graphics.setColor(textForeground:rgb())

        printfShadow(r, g, b, "A game by Maurice and Hans\n\nSelect the node with the mouse or controller to begin", 0, 51, WIDTH, "center")

        love.graphics.setColor(1, 1, 1)
    end

    if self.crosshairEnabled then
        love.graphics.setColor(1, 1, 1, 0.5)
        love.graphics.rectangle("fill", 0, HEIGHT/2-1, WIDTH/2-9, 2)
        love.graphics.rectangle("fill", WIDTH/2+9, HEIGHT/2-1, WIDTH/2-9, 2)

        love.graphics.rectangle("fill", WIDTH/2-1, 0, 2, HEIGHT/2-9)
        love.graphics.rectangle("fill", WIDTH/2-1, HEIGHT/2+9, 2, HEIGHT/2-9)
        love.graphics.setColor(1, 1, 1)
    end

    love.graphics.draw(timetableOverlay)

    love.graphics.draw(titleImg, (WIDTH-titleImg:getWidth())*.5, 2)

    for _, button in ipairs(self.buttons) do
        button:draw()
    end

    love.graphics.pop()
end

function timetable:getMousePosition()
    if self.crosshairEnabled then -- center
        return WIDTH/2, HEIGHT/2

    else -- actual mouse
        local x, y = love.mouse.getPosition()

        x = x/SCALE
        y = y/SCALE-self.offY

        return x, y
    end
end

function timetable:mousepressed(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    for _, button in ipairs(self.buttons) do
        if button:mousepressed(x, y) then
            return
        end
    end

    x, y = self.camera:worldCoords(x, y)

    self:nodeWindowPress(x, y)

    self.dragging = true
end

function timetable:startOnNode(node)
    if self.closing == false then
        game:startOnNode(node)
        self:close()
    end
end

function timetable:nodeWindowPress(x, y, launchIfSelected)
    for _, nodeLocation in ipairs(self.nodeTable) do
        if nodeLocation.clickable then
            if self:nodeCollision(nodeLocation, x, y) then
                if self.selectedNode == nodeLocation.node and launchIfSelected then
                    self:startOnNode(self.selectedNode)
                end

                self.selectedNode = nodeLocation.node
                self.buttons[1].disabled = false
            end
        end
    end
end

function timetable:nodeCollision(nodeLocation, x, y)
    return x >= nodeLocation.x and x < nodeLocation.x+18 and y >= nodeLocation.y and y < nodeLocation.y+18
end

function timetable:mousereleased(x, y, button)
    x = x/SCALE
    y = y/SCALE

    y = y - self.offY

    for _, button in ipairs(self.buttons) do
        button:mousereleased(x, y)
    end

    self.dragging = false
end

function timetable:mousemoved(_, _, x, y)
    self.crosshairEnabled = false
    x = x/SCALE
    y = y/SCALE

    if self.dragging then
        self:moveCamera(-x, -y)
    end
end

function timetable:moveCamera(x, y)
    self.camera:move(x/self.camera.scale, y/self.camera.scale)

    -- don't let the player move the timetable offscreen (what a dummy)
    self.camera.x = math.max(self.camera.x, self.panWindow[1])
    self.camera.y = math.max(self.camera.y, self.panWindow[2])

    self.camera.x = math.min(self.camera.x, self.panWindow[3])
    self.camera.y = math.min(self.camera.y, self.panWindow[4])
end

function timetable:zoomCamera(zoom)
    self.camera:zoom(zoom)

    self.camera.scale = math.min(1, math.max(1/SCALE, self.camera.scale))
end

function timetable:wheelmoved(_, y)
    self:zoomCamera(1.1^y)
end

function timetable:backButton()
    if self.backButtonEnabled then
        self.backButtonEnabled = false
        self:close()
    end
end

function timetable:close()
    self.closing = true
    self.backButtonEnabled = false

    local function backToGame()
        gamestate.pop()
    end

    timer.tween(0.3, self, {offY = -255}, 'out-quad', backToGame)
end



function timetable:buildNodeTable()
    local function walkNode(t, node, x, y, sandW, sandH, isVerticalStart, isVerticalEnd) -- god I hate recursion
        local lastTimeline = 0
        for i, childNode in ipairs(node.children) do
            if childNode.nodeTime > 0 then
                local nodeTime = math.max(18/timelineSecondWidth, childNode.nodeTime)
                local nodeTimeOffset = nodeTime
                local timelineOffset = childNode.timeline - node.timeline


                local w = math.floor(nodeTimeOffset*timelineSecondWidth)
                local h = timelineHeight*(timelineOffset-lastTimeline)

                local newX = x + w
                local newY = y + timelineHeight*timelineOffset

                local isVerticalStart = (i == 2)
                local isVerticalEnd = (i == #node.children)

                walkNode(t, childNode, newX, newY, w, h, isVerticalStart, isVerticalEnd)

                lastTimeline = timelineOffset
            end
        end

        local nodeType = "regular"
        local clickable = true

        if node.ended then
            clickable = false

            if node.died then
                nodeType = "died"

            else
                nodeType = "warped"
            end

        elseif node == game.activeNode then
            nodeType = "active"
            clickable = false
        end


        table.insert(t, {
            node=node,
            x=x,
            y=y,
            sandW=sandW,
            sandH=sandH,
            isVerticalStart=isVerticalStart,
            isVerticalEnd=isVerticalEnd,
            nodeType=nodeType,
            clickable=clickable,
        })
    end

    local out = {}

    walkNode(out, game.rootNode, 0, 0, 0, 0, false, false)

    return out
end


function timetable:drawNode(node)
    local img
    local animation
    local clickable

    if node.node == self.selectedNode then
        img = timetableNodeSelected
        animation = nodeAnimationActive
        clickable = true

    elseif node.nodeType == "regular" then
        img = timetableNode
        animation = nodeAnimation
        clickable = true

    elseif node.nodeType == "warped" then
        img = timetableNodeWarped
        animation = false
        clickable = false

    elseif node.nodeType == "died" then
        img = timetableNodeDied
        animation = false
        clickable = false

    elseif node.nodeType == "active" then
        img = timetableNodeActive
        animation = false
        clickable = false
    end

    if animation then
        animation:draw(img, node.x, node.y)
    else
        love.graphics.draw(img, node.x, node.y)
    end

    if clickable then
        local img = timetableNodeOverlay

        local x, y = self.camera:worldCoords(self:getMousePosition())

        if self:nodeCollision(node, x, y) then
            img = timetableNodeOverlayHighlight
        end

        love.graphics.draw(img, node.x, node.y)
    end
end

local lineVerticalTop = love.graphics.newImage("img/timetable/line_vertical_top.png")
local lineVertical = love.graphics.newImage("img/timetable/line_vertical.png")
lineVertical:setWrap("repeat", "repeat")
local lineVerticalQuad = love.graphics.newQuad(0, 0, 18, 18, 18, 18)

local lineHorizontalLeft = love.graphics.newImage("img/timetable/line_horizontal_left.png")
local lineHorizontalLeftCorner = love.graphics.newImage("img/timetable/line_horizontal_left_corner.png")
local lineHorizontalLeftT = love.graphics.newImage("img/timetable/line_horizontal_left_t.png")
local lineHorizontalRight = love.graphics.newImage("img/timetable/line_horizontal_right.png")
local lineHorizontal = love.graphics.newImage("img/timetable/line_horizontal.png")

lineHorizontal:setWrap("repeat")
local lineHorizontalQuad = love.graphics.newQuad(0, 0, 36, 18, 36, 18)


function timetable:drawSand(node)
    self:drawSandLine(node.x-node.sandW, node.y-node.sandH, node.sandW, node.sandH, node.isVerticalStart, node.isVerticalEnd)
end

function timetable:drawSandLine(x, y, w, h, isVerticalStart, isVerticalEnd)
    -- vertical
    if h > 18 then
        local verticalH = h-18
        local verticalY = y+18

        -- top
        if isVerticalStart then
            love.graphics.draw(lineVerticalTop, x, y+18)
            verticalH = verticalH - 18
            verticalY = verticalY + 18
        end

        -- vertical
        lineVerticalQuad:setViewport(0, 0, 18, verticalH)
        love.graphics.draw(lineVertical, lineVerticalQuad, x, verticalY)
    end

    local middleW = w-36
    local middleX = 0

    if h == 0 then
        middleW = w-54
        middleX = 18
        -- left
        if w > 40 then
            love.graphics.draw(lineHorizontalLeft, x+18, y+h)
        end
    else
        if isVerticalEnd then
            -- left corner
            love.graphics.draw(lineHorizontalLeftCorner, x, y+h)
        else
            -- left T
            love.graphics.draw(lineHorizontalLeftT, x, y+h)
        end
    end

    if middleW > 0 then
        -- horizontal
        lineHorizontalQuad:setViewport(0, 0, middleW, 18)
        love.graphics.draw(lineHorizontal, lineHorizontalQuad, x+18+middleX, y+h)
    end

    -- bullshit right alignment math
    local yOff = -math.sin(middleW%36/36*math.pi*2+math.pi*.5)+1

    -- right
    if w > 30 then
        love.graphics.draw(lineHorizontalRight, x+w-18, y+h+yOff)
    end
end
