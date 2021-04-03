local Node = class("Node")

function Node:initialize(parent)
    self.parent = parent
    self.lifeTime = 0
end

return Node
