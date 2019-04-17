print "Ingrese número: "
numero = gets.to_i


a = 0
b = 1
x = 0
for i in 0..numero
    if i == 0
        puts i
    elsif i == 1
        puts i
    else
        x = a + b
        puts x
        a = b
        b = x
    end
end