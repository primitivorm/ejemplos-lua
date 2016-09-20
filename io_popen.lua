local handle = io.popen("ls -al")
local result = handle:read("*a")
handle:close()
print (result)
