# puts "Ingresa goles del local: "
# partido = gets.chomp.to_iorac = []
# puts "Ingresa goles de la visita"
# partido = gets.chomp.to_i

# if partido[0]<partido[1]
#     puts "gana visita"
# else
#     puts "gana local"
# end


# people = []
# num.times do
#   print "Ingresa el nombre de la persona: "
#   people << gets.chomp # insertamos cada persona en el arreglo
# end

# puts "La persona seleccionada es #{people.sample}"

# #ejemplo 4
# puts "Ingrese una oracion"
# oracion=gets.chomp

# #puts "Palabras totales : #{oracion.split(" ").count}" cuenta altro en este caso por espacio en blanco
# arreglo = oracion.split(" ")
# #puts arreglo
# for i in 0..arreglo.length-1
#     puts i
#     #puts arreglo[i]
# end

#ejemplo 5

nombre=""
letra=""
while nombre != "salir"
puts "Escriba el nombre de una persona : "
nombre=gets.chomp
letra=nombre.split("")
if letra[0] == "a" or letra[0] == "e" or letra[0] == "i" or letra[0] == "o" or letra[0] == "u"
        puts nombre.capitalize
    else
        puts nombre.upcase
end
end




