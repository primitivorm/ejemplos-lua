local function fib(n)
    if n < 2 then
        return n
    else
        return fib(n-1) + fib(n-2)
    end
end

print (fib(20))

--[[
function fibo_rec(m)
    if m < 2 then
      return m
    end
    return fibo_rec(m-1) + fibo_rec(m-2)
end

-- Naive recursive
function fibo(n)
  local function inner(m)
    if m < 2 then
      return m
    end
    return inner(m-1) + inner(m-2)
  end
  return inner(n)
end

-- Iterative
function fibo_iter(n)
  a, b = 0, 1

  for i = 1, n do
    a, b = b, a + b
  end
  return a
end

i=0
while i < 40 do
    print(i .. ": " .. fibo_rec(i))
    i=i+1    
end
--]]
