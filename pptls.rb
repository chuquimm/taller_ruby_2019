system 'cls'
continuar_juego = "S"
puts "JUEGO DE PIEDRA PAPEL TIJERA LAGARTO SPOCK"
puts " "
puts "¿como te llamas jugador?"
nombre_jugador = gets.chomp
puts "Hola " + nombre_jugador.to_s + " vas a jugar contra la maquina"
puts"¿Sabes las reglas del juego? (Responde S/N)"
respuesta_reglas = gets.chomp
if respuesta_reglas == "N" || respuesta_reglas == "n"
  puts "Las Reglas del juego son: \n 
          Las tijeras cortan el papel \n 
          El papel cubre a la piedra \n 
          La piedra aplasta al lagarto\n 
          El lagarto envenena a Spock\n 
          Spock destroza las tijeras\n 
          Las tijeras decapitan al lagarto\n 
          El lagarto se come el papel\n 
          El papel refuta a Spock\n 
          Spock vaporiza la piedra\n 
          La piedra aplasta las tijeras\n
          Si las opciones de cada uno es la misma empate"
end
while (continuar_juego =="S") || (continuar_juego == "s")
  puts "Recuerda que las opciones son:\n
        Piedra = 1 \n
        Papel = 2 \n
        Tijera = 3 \n
        Lagarto = 4\n
        Spock = 5\nEscoge tu opcion"
     eleccion_usuario = gets.to_i
     eleccion_computadora = rand(5)
     eleccion_computadora = eleccion_computadora + 1
  if eleccion_usuario == eleccion_computadora
    puts "Empate"
  elsif (eleccion_usuario == 1 && eleccion_computadora == 4) || (eleccion_usuario == 1 && eleccion_computadora == 3)
    puts  "Ganaste :D"
  elsif (eleccion_usuario == 2 && eleccion_computadora == 1) || (eleccion_usuario == 2 && eleccion_computadora == 5)
    puts "Ganaste :D"
  elsif (eleccion_usuario == 3 && eleccion_computadora == 2) || (eleccion_usuario == 3 && eleccion_computadora == 4)
    puts "Ganaste :D"
  elsif (eleccion_usuario == 4 && eleccion_computadora == 5) || (eleccion_usuario == 4 && eleccion_computadora == 2)
    puts "Ganaste :D"
  elsif (eleccion_usuario == 5 && eleccion_computadora == 3) || (eleccion_usuario == 5 && eleccion_computadora == 1)
    puts "Ganaste :D"
  elsif (eleccion_computadora == 1 && eleccion_usuario == 4) || (eleccion_computadora == 1 && eleccion_usuario == 3)
    puts "Perdiste D:"  
  elsif (eleccion_computadora == 2 && eleccion_usuario == 1) || (eleccion_computadora == 2 && eleccion_usuario == 5)
    puts "Perdiste D:"
  elsif (eleccion_computadora == 3 && eleccion_usuario == 2) || (eleccion_computadora == 3 && eleccion_usuario == 4)
    puts "Perdiste D:"  
  elsif (eleccion_computadora == 4 && eleccion_usuario == 5) || (eleccion_computadora == 4 && eleccion_usuario == 2)
    puts "Perdiste D:"
  elsif (eleccion_computadora == 5 && eleccion_usuario == 3) || (eleccion_computadora == 5 && eleccion_usuario == 1)
    puts "Perdiste D:"  
  else
    puts "Revisa las opciones porfavor"
  end
  if eleccion_computadora == 1
    eleccion_computadora = "Piedra"
  elsif eleccion_computadora == 2
    eleccion_computadora = "Papel"
  elsif eleccion_computadora == 3
    eleccion_computadora = "Tijera"
  elsif eleccion_computadora == 4
    eleccion_computadora = "Lagarto"
  elsif eleccion_computadora == 5
    eleccion_computadora = "Spock"
  end
  puts "La eleccion de la computadora fue " + eleccion_computadora.to_s
  puts ""
  puts "¿Quieres jugar otra vez?(S/N)"
  continuar_juego = gets.chomp
end
