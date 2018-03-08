Class = require("Class")

Mammal = Class.new(require("Animal"))

--Class variables
Mammal.legs = 0

--Class functions
function Mammal:walk(pos)
    self.position=pos
    print(self.name.." walking",self.position[1],self.position[2],self.position[3])
end

--Class constructor
function Mammal:init(arg)
    self:parentinit(arg) -- parent has 2 args
end

return Mammal