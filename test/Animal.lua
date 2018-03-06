Class = require("Class")

Animal = Class.new()

--Class variables
Animal.static.number=0
Animal.name=""
Animal.health=100
Animal.position={0,0,0}

--Class functions
function Animal:eat(num)
    self.health=self.health+num
    print(self.name.." eating "..num)
end

--Class constructor
function Animal:init(arg)
    self.static.number=self.static.number+1
    self.name=arg[1]
    self.position=arg[2]
end

return Animal
