--[[
function sumar(a,b)
    local s = a+b
    return s
end
]]

s = sumar(1)
print(s)

--[[
lua: function_call.lua:1: attempt to call global 'sumar' (a nil value)
stack traceback:
	function_call.lua:1: in main chunk
	[C]: in ?
]]
function sumar(a,b)
    local s = a+b
    return s
end

