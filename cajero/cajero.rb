cantidad_10 = 25
cantidad_20 = 20
cantidad_50 = 15
cantidad_100 = 10
cantidad_200 = 5


total = (10 * cantidad_10) + (20 * cantidad_20) + (50 * cantidad_50) + (100 * cantidad_100) + (200 * cantidad_200)

while true
    str = "Se han retirando: \n" # se usara para devolver el valor de billetes retirados
    continuar = true
    while continuar
        print "¿Cuánto desea retirar?: "
        cantidad = gets.to_i
        break if cantidad % 10 == 0
        puts "La cantidad debe ser multiplo de 10"
    end

    if total > total
        puts "No se dispone de esa cantidad de dinero"
    else
        total_retirado = 0

        retiro_200  = cantidad / 200
        if retiro_200 < cantidad_200
            total_retirado = total_retirado + retiro_200 * 200
        end
        retiro_100  = (cantidad - total_retirado) / 100
        if retiro_100 < cantidad_100
            total_retirado = total_retirado + retiro_100 * 100
        end

        retiro_50  = (cantidad - total_retirado) / 50
        if retiro_50 < cantidad_50
            total_retirado = total_retirado + retiro_50 * 50
        end

        retiro_20  = (cantidad - total_retirado) / 20
        if retiro_20 < cantidad_20
            total_retirado = total_retirado + retiro_20 * 20
        end

        retiro_10  = (cantidad - total_retirado) / 10
        if retiro_10 < cantidad_10
            total_retirado = total_retirado + retiro_10 * 10
        end

        if cantidad == total_retirado
            if retiro_200 != 0
                str += retiro_200.to_s + " billetes de 200\n"
                cantidad_200 -= retiro_200
            end
            if retiro_100 != 0
                str += retiro_100.to_s + " billetes de 100\n"
                cantidad_100 -= retiro_100
            end
            if retiro_50 != 0
                str += retiro_50 .to_s+ " billetes de 50\n"
                cantidad_50 -= retiro_50
            end
            if retiro_20 != 0
                str += retiro_20 .to_s+ " billetes de 20\n"
                cantidad_20 -= retiro_20
            end
            if retiro_10 != 0
                str += retiro_10 .to_s+ " billetes de 10\n"
                cantidad_10 -= retiro_10
            end
            puts str
        else
            puts "No se puede retirar la cantidad asignada,"
        end
    end
end