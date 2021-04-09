local Node = class("Node")

function Node:initialize(parent, timeline)
    self.parent = parent
    self.timeline = timeline

    self.nodeTime = 0
    self.ended = false
    self.died = false

    self.children = {}

    if parent then
        table.insert(self.parent.children, self)
    end
end

return Node
