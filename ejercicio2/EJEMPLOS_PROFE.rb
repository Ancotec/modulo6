# n = gets.chomp.to_i
# # numeros = Array.new
# numeros = []

# # guardar los números
# for i in 1..n
#     numeros << rand(0..10)
# end

# # sumar los números del arreglo
# suma = 0
# puts "primera forma".center(20, "_")
# for numero in numeros
#     suma += numero
#     print "#{numero} "
# end
# puts "suma total #{suma}"

# puts "segunda forma".center(20, "_")
# suma2 = 0
# for c in 0..numeros.length - 1  
#     suma2 += numeros[c]
# end
# puts "suma total2 #{suma2}"

# puts "tercera forma".center(20, "_")
# suma3 = 0
# numeros.each do |numero_con_each|
#     suma3 += numero_con_each
# end
# puts "suma total3 #{suma3}"

# 3. 

puts "Ingrese un número"
n = gets.chomp.to_i
numeros = []
for i in 1..n
    numeros.push rand(0..10)
end
textos = []
for numero in numeros
    if numero % 2 == 0
        textos.push "par"
    else
        textos.push "impar"
    end
end

for c in 0..numeros.size-1
    puts numeros[c]
    puts textos[c]
end
© 2021 GitHub, Inc.