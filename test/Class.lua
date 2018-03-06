local Class = {}
    
function Class.new(parent)
    local class = {}
    if parent then 
        Class.copy(parent,class)
        class.parentinit = parent.init

    else
        class.static = {}
        function class:parentinit(arg) end
        function class:init(arg) end
    end

    function class:new(arg)
        class:init(arg)
        local obj = {}
        Class.copy(self,obj)
        obj.static = self.static --pointert ad át másolás helyett
        return obj
    end

    return class
end

function Class.copy(t1,t2,szint)
    szint = szint or 0

    for k,v in pairs(t1) do
        if type(v)=="table" then
            t2[k]={}
            Class.copy(v,t2[k],szint+1)
        else
            t2[k]=v
        end
    end
end

return Class