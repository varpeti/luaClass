Mamal = require("Mamal") 

a1 = Mamal:new({"Mamvath",{10,10,10},4})

a1:eat(10)
a1:walk({30,30,30})

print("Number of Mamal: ",a1.static.number)
print(a1.name..": health: "..a1.health.." position: "..a1.position[1].." "..a1.position[2].." "..a1.position[3])

Fish = require("Fish")

a2 = Fish:new({"Salamon",{0,0,0}})
a3 = Fish:new({"Tuna",{-10,-10,-10}})

a2:eat(-10) --poison?
a2:swim({10,20,30})

print("Number of Fish: ",a2.static.number)
print(a2.name..": health: "..a2.health.." position: "..a2.position[1].." "..a2.position[2].." "..a2.position[3])
print(a3.name..": health: "..a3.health.." position: "..a3.position[1].." "..a3.position[2].." "..a3.position[3])

print("Number of Mamal: ",Mamal.static.number)