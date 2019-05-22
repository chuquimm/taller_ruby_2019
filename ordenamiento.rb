puts "Ordenamiento"
a = []
i = 0
while true
  puts "Ingrese la carta " + (i+1).to_s
  a[i]= gets.to_i
  if i==12
    break
  end
  i=i+1
end
puts "El orden de las cartas es el siguiente"
puts "Array A: " + a.to_s 
for x in 1..(a.size-1)
  for y in 1..(a.size-1)
    if a[x] < a[y]
      rem = a[x]
      a[x] = a[y]
      a[y] = rem
    end
  end
end
puts "-"*50
puts "En los siguiente arrays los numeros estan ordenados de manera ascendente"
puts "Array A ordenado es: " + a.to_s
for x in 1..(a.size-1)
  for y in 1..(a.size-1)
    if a[x] > a[y]
      rem = a[x]
      a[x] = a[y]
      a[y] = rem
    end
  end
end
puts "-"*50
puts "En los siguiente arrays los numeros estan ordenados de manera descendente"
puts "Array B ordenado es: " + a.to_s
