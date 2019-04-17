# Piedra  0
# Papel   1
# Tijera  2

puts "Elige: "
puts "Piedra: 0"
puts "Papel: 1"
puts "Tijera: 2"
jugador = gets.to_i

if jugador == 0
    puts "Elegiste piedra"
elsif jugador == 1
    puts "Elegiste papel"
elsif jugador == 2
    puts "ELegiste tijera"
end

enemigo = rand(0..2)

if enemigo == 0
    puts "El enemigo eligio piedra"
elsif enemigo == 1
    puts "El enemigo eligio papel"
elsif enemigo == 2
    puts "El enemigo eligio tijera"
end

if enemigo == 0 
    if jugador == 0
        puts "Empate"
    elsif jugador == 1
        puts "Ganaste"
    elsif jugador == 2
        puts "Perdiste"
    end
elsif enemigo == 1 
    if jugador == 0
        puts "Perdiste"
    elsif jugador == 1
        puts "Empate"
    elsif jugador == 2
        puts "Ganaste"
    end
elsif enemigo == 2
    if jugador == 0
        puts "Ganaste"
    elsif jugador == 1
        puts "Perdiste"
    elsif jugador == 2
        puts "Empate"
    end
end