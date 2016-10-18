--aqui agrego lo que tenga cada archivo
--[[plugins = {
		'bash.lua',
		'onmessage.lua',
		'calculator.lua',
		'plugins.lua'}
]]

--tome el ejemplo de bash.lua
local function bash(msg, blocks)
		local action = io.popen(blocks[1])
		local read = action:read("*a")
	return read
end
local action = function(msg, blocks)
local command = "_"..bash(msg, blocks).."_"
   --api.sendMessage(msg.chat.id, command, true)
   --esto es lo que se ejecuta <---
   print(command) --solo muestro el command
end

bash_trigger = {
        action = action,
        triggers = {
               '^/bash (.*)$'
            }
        }

plugins = {}
table.insert(plugins, bash_trigger)

--esto esta en otra parte, no se donde pero la declaro
msg = {text = "/bash echo 'bla bla bla'", lang='bla bla bla'}

--esto es una funcion de usuario
local function match_pattern(pattern, text)
  if text then
  	--text = text:gsub('@'..bot.username, '')
    local matches = {}
    matches = { string.match(text, pattern) }
    if next(matches) then
    	return matches
    end
    end
end

--esto esta en bot.lua
for i,v in pairs(plugins) do
    if(v.triggers) then
        for k,w in pairs(v.triggers) do
            local blocks = match_pattern(w, msg.text)
            if blocks then
                local success, result = pcall(function()
                    return v.action(msg, blocks, msg.lang) --aqui invoco la funcion correspondiente
                end)
            end
        end
    end
end
