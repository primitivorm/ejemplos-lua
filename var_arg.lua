function suma(a, b, c)
    return a + b + c
end

function valores()
    return 1,2,3
end

print(suma(valores()))

--[[
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
