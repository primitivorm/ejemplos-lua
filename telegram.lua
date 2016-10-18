http = require('socket.http')
https = require('ssl.https')
url = require('socket.url')
json = require('dkjson')

login = ""
apiKey = "229849153:AAEMlyzjFGaKaGoil4QRp6xyqU6gSWlGSwY"

function bitly(link)
--url = 'http://api.bit.ly/v3/shorten?longUrl='..url.escape(link)..'&login='..login..'&apiKey='..apiKey
url = 'https://api.telegram.org/bot229849153:AAEMlyzjFGaKaGoil4QRp6xyqU6gSWlGSwY/getUpdates'
--request = http.request(url)
request = https.request(url)
--print(request)
res = json.decode(request)
print(res)
print(request)
--[[if not res.data.url then 
 return 'Un error ha ocurrido ('..res.status_txt..')'
end
--]]
--return res.data.url
return 0
end

bitly("")
