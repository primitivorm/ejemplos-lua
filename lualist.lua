function es_dos(numero)
    if numero == 2 then
        return true, "Es el número 2", "OK" -- retornamos 3 argumentos en la lista
    end
    return false, "No es el número 2", "NO" -- retornamos 3
end


booleano, mensaje, estado = es_dos(2) -- creamos los argumentos y le damos valor a cada uno

if booleano then -- validamos el primer argumento que es bool
    print("MENSAJE: ".. mensaje, "ESTADO "..estado) -- ponemos el argumento 2 y 3
else
    print("MENSAJE: "..mensaje, "ESTADO " ..estado)
end

function hacer_argumentos()
    return "%s", "hola k ase" -- retornamos los argumentos para string.format (son 2)
end

print(string.format(hacer_argumentos())) -- ahora nos retornará los argumentos de la función

numero1, numero2, numero3 = 1, 2, 3 -- creamos 3 valores con 1, 2, y 3 de valor

print(numero1, numero2, numero3) -- imprimimos cada número, la coma de print es como un '\t' de escape, solo sirve para separar


mensaje, codigo = "hola", 200 -- lo mismo
print(mensaje, codigo)
