leer = io.read() -- lee el texto ingresado

--[[
Aquí va se indica la lista
Deberá leer cualquier valor dentro de ella sin tipo array
]]

lista = {
"tomate",
"lechuga",
"zanahoria",
}

texto = ''
        for k,enlista in pairs(lista) do --[[ aquí empieza transformando la lista a array declarandola como "enlista"
arriba está indicando que leerá el valor "lista" ]]
                if leer == enlista then  -- si leer es igual al valor transformado a array
                print("Esta en la lista :D") -- imprimirá esto, del caso contrario, no imprimirá nada
                end

        end


