--a,b,c = 1,2,3
--[[
main <var_arg.lua:0,0> (7 instructions, 28 bytes at 0x1329540)
0+ params, 3 slots, 0 upvalues, 0 locals, 6 constants, 0 functions
        1       [1]     LOADK           0 -4    ; 1
        2       [1]     LOADK           1 -5    ; 2
        3       [1]     LOADK           2 -6    ; 3
        4       [1]     SETGLOBAL       2 -3    ; c
        5       [1]     SETGLOBAL       1 -2    ; b
        6       [1]     SETGLOBAL       0 -1    ; a
        7       [1]     RETURN          0 1 
--]]
--[[
local a,b = 1,2,3
print(a)
print(b)
main <var_arg.lua:0,0> (10 instructions, 40 bytes at 0x1c15540)
0+ params, 4 slots, 0 upvalues, 2 locals, 4 constants, 0 functions
        1       [13]    LOADK           0 -1    ; 1
        2       [13]    LOADK           1 -2    ; 2
        3       [13]    LOADK           2 -3    ; 3
        4       [14]    GETGLOBAL       2 -4    ; print
        5       [14]    MOVE            3 0
        6       [14]    CALL            2 2 1
        7       [15]    GETGLOBAL       2 -4    ; print
        8       [15]    MOVE            3 1
        9       [15]    CALL            2 2 1
        10      [15]    RETURN          0 1
--]]

function valores(var1)
    return 1,2,3,4
end

x=valores()
print(x)

--[[
function suma(a, b, c)
    return a + b + c
end

function valores()
    return 1,2,3,4
end

print(suma(valores()))

function is_odd(n)
    if(n % 2) then
        return false, "es par"
    else
        return true, "es impar"
    end
end

print(is_odd(1))

function fprint (f, ...)
   for i, v in ipairs{...} do
      f:write(tostring(v))
      f:write("\t")
   end
   f:write("\n")
end

fprint(io.stderr, 1, 2, nil, 3)
--]]
