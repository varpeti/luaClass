Class = require("Class")

Mamal = Class.new(require("Animal"))

--Class variables
Mamal.legs = 0

--Class functions
function Mamal:walk(pos)
    self.position=pos
    print(self.name.." walking",self.position[1],self.position[2],self.position[3])
end

--Class constructor
function Mamal:init(arg)
    self:parentinit(arg) -- parent has 2 args
end

return Mamal