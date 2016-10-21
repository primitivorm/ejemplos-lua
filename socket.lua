--[[http = require('socket.http')
https = require('ssl.https')
url = require('socket.url')
json = require('dkjson')

login = ""
apiKey = ""

function bitly(link)
url = 'http://api.bit.ly/v3/shorten?longUrl='..url.escape(link)..'&login='..login..'&apiKey='..apiKey
request = http.request(url)
res = json.decode(request)
if not res.data.url then 
	return 'Un error ha ocurrido ('..res.status_txt..')'
end
return res.data.url
end

myUrl = "https://lua.org/"
print("Link generated\n"..bitly(myUrl))
--]]

--[[
-- load the http module
local io = require("io")
local http = require("socket.http")
local ltn12 = require("ltn12")

-- connect to server "www.cs.princeton.edu" and retrieves this manual
-- file from "~diego/professional/luasocket/http.html" and print it to stdout
http.request{ 
    url = "http://www.cs.princeton.edu/~diego/professional/luasocket/http.html", 
    sink = ltn12.sink.file(io.stdout)
}

-- connect to server "www.example.com" and tries to retrieve
-- "/private/index.html". Fails because authentication is needed.
b, c, h = http.request("http://www.example.com/private/index.html")
-- b returns some useless page telling about the denied access, 
-- h returns authentication information
-- and c returns with value 401 (Authentication Required)

-- tries to connect to server "wrong.host" to retrieve "/"
-- and fails because the host does not exist.
r, e = http.request("http://wrong.host/")
-- r is nil, and e returns with value "host not found"
--]]

local io = require("io")
local http = require("socket.http")
require("ltn12")

http.request{ 
    url = "http://www.cs.princeton.edu/~diego/professional/luasocket/http.html", 
    sink = sink.file(io.stdout)
}
b, c, h = http.request("http://www.example.com/private/index.html")

