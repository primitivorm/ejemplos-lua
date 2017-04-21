--lua solo permite operadores aritmeticos entre valores enteros y decimales
b = true;
c = 'c';
i = 1;
d = 10.05;
s = "hola";
-------------------------------------
--operador  + (suma)
-------------------------------------
--attempt to perform arithmetic on global 'b' (a boolean value)
--print(b+b); 
--print(b+c); 
--print(b+i);
--print(b+d);
--print(b+s);
--print(i+b);
--attempt to perform arithmetic on global 'c' (a string value)
--print(c+b);
--print(c+i);
--print(c+d);
--print(c+s);
--print(i+c);
--print(i+s);
--print(s+b);
--print(s+c);
--print(s+i);
--print(s+s);
print("suma");
print(i+i); --2
print(i+d); --11.05
print(d+i); --11.05
print(d+d); --20.1 

-------------------------------------
--operador  - (resta)
-------------------------------------
print("resta");
print(i-i); --0
print(i-d); --(-9.05)
print(d-i); --9.05
print(d-d); --0 

-------------------------------------
--operador  * (multiplicacion)
-------------------------------------
print("multiplicacion");
print(i*i); --1
print(i*d); --10.05
print(d*i); --10.05
print(d*d); --101.0025 

-------------------------------------
--operador  / (division)
-------------------------------------
print("division");
print(i/i); --1
print(i/d); --0.099502487562189
print(d/i); --10.05
print(d/d); --1

-------------------------------------
--operador  % (modulo)
-------------------------------------
print("modulo");
print(i%i); --0
print(i%d); --1
print(d%i); --0.050000000000001
print(d%d); --0

if nil then
    print("nil != false");
end
