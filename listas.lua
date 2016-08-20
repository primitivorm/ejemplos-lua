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
--[[ aquí empieza transformando la lista a array declarandola como "enlista"
arriba está indicando que leerá el valor "lista" ]]
for k,enlista in pairs(lista) do
        if leer == enlista then  -- si leer es igual al valor transformado a array
        print(leer .. " esta en la lista :D") -- imprimirá esto, del caso contrario, no imprimirá nada
        lista[k] = "xxxxxx"   --si esta en la lista modificas el valor
        end
end

print("Ahora la lista contiene:")
for k,enlista in pairs(lista) do
  print(lista[k])
end
