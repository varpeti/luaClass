Class = require("Class")

Fish = Class.new(require("Animal"))

--Class variables
Fish.swiming = true

--Class functions
function Fish:swim(pos)
    self.position=pos
    print(self.name.." swiming",self.position[1],self.position[2],self.position[3])
end

--Class constructor
function Fish:init(arg)
    self:parentinit(arg) -- parent has 2 args
    self.swiming=true
end

return Fish