local Node = class("Node")

function Node:initialize(parent, nodeTime, timeline)
    self.parent = parent
    self.nodeTime = nodeTime
    self.timeline = timeline

    self.children = {}
end

return Node
