local AnimationMachine = class("AnimationMachine")

function AnimationMachine:initialize(img, animations)
    self.img = img
    self.animations = animations

    self.dir = "right"
    self.x = 0
    self.y = 0
    self.r = 0
    self.sx = 1
    self.sy = 1
    self.ox = 0
    self.oy = 0
end

function AnimationMachine:draw(e)
    self.animations[self.dir][e.animationState]:draw(self.img, e.x+self.x, e.y+self.y, e.r, self.sx, self.sy, self.ox, self.oy)
end

return AnimationMachine
