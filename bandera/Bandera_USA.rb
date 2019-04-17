system "cls"

#Pedimos dimensiones de la bandera
print "Ancho:"
col = gets.to_i
print "Alto:"
fil = gets.to_i
#Vamos a aproximar al multiplo de 13 mas cercano diferente a 0

fil_aux = fil /  13.0
fil_aux = fil_aux - ( fil / 13 )

if fil <= 13
	fil = 13
elsif fil % 13 == 0
		fil = fil 
else
	if fil_aux < 0.5
		fil_aux = fil / 13
		fil = fil_aux * 13
	else
		fil_aux = ( fil / 13 ) + 1
		fil = fil_aux * 13
	end
end

div = fil / 13

system "cls"

for fila in (1..fil)
		for columna in 1..col
			if  columna <= ((col / 5) * 2) && fila <= (7 * div)
				color = "44"
			elsif ((fila + div - 1) / div) % 2 == 0
				color = "47"
			elsif ((fila + div - 1) / div) % 2 != 0
				color = "41"
			end
			print "\033[1;"+color+";"+color+"m "
		end
		puts "\033[0m"
end
print ""

gets
