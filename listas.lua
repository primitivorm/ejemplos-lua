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

--insert in list
i=0
lista={}
while (i<1000000) do
    table.insert(lista, i)
    i=i+1
end
print("longitud:" .. #lista)
--[[ Lua 5.2.4  Copyright (C) 1994-2015 Lua.org, PUC-Rio

main <while.lua:0,0> (22 instructions at 0x21ca7b0)
0+ params, 3 slots, 1 upvalue, 0 locals, 9 constants, 0 functions
	1	[3]	SETTABUP 	0 -1 -2	; _ENV "i" 0
	2	[4]	NEWTABLE 	0 0 0
	3	[4]	SETTABUP 	0 -3 0	; _ENV "lista"
	4	[5]	GETTABUP 	0 0 -1	; _ENV "i"
	5	[5]	LT       	0 0 -4	; - 1000000
	6	[5]	JMP      	0 9	; to 16
	7	[6]	GETTABUP 	0 0 -5	; _ENV "table"
	8	[6]	GETTABLE 	0 0 -6	; "insert"
	9	[6]	GETTABUP 	1 0 -3	; _ENV "lista"
	10	[6]	GETTABUP 	2 0 -1	; _ENV "i"
	11	[6]	CALL     	0 3 1
	12	[7]	GETTABUP 	0 0 -1	; _ENV "i"
	13	[7]	ADD      	0 0 -7	; - 1
	14	[7]	SETTABUP 	0 -1 0	; _ENV "i"
	15	[7]	JMP      	0 -12	; to 4
	16	[9]	GETTABUP 	0 0 -8	; _ENV "print"
	17	[9]	LOADK    	1 -9	; "longitud:"
	18	[9]	GETTABUP 	2 0 -3	; _ENV "lista"
	19	[9]	LEN      	2 2
	20	[9]	CONCAT   	1 1 2
	21	[9]	CALL     	0 2 1
	22	[9]	RETURN   	0 1 ]]
