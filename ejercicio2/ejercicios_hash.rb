#EJEMPLO HASH

# #EJEMPLO 1
equipo1 = { nombre:     'argentina',    estadio: 'Estadio Único de Santiago del Estero' }
equipo2 = { nombre:     'bolivia',      estadio: 'Estadio Hernando Siles' }
equipo3 = { nombre:     'brasil',       estadio: 'Estadio José Pinheiro Borda' }
equipo4 = { nombre:     'chile',        estadio: 'Estadio Monumental Chile' }
equipo5 = { nombre:     'colombia',     estadio: 'Estadio Metropolitano Roberto Meléndez' }
equipo6 = { nombre:     'ecuador',      estadio: 'Estadio Rodriguez Paz Delgado' }
equipo7 = { nombre:     'paraguay',     estadio: 'Estadio Defensores del Chaco' }
equipo8 = { nombre:     'perú',         estadio: 'Estadio Nacional del Perú' }
equipo9 = { nombre:     'uruguay',      estadio: 'Estadio Centenario' }
equipo10 = { nombre:    'venezuela',    estadio: 'Estadio Olímpico (U.C.V.)' }

equipos = [ 
    equipo1, 
    equipo2, 
    equipo3, 
    equipo4, 
    equipo5, 
    equipo6, 
    equipo7, 
    equipo8, 
    equipo9, 
    equipo10 ]

# puts "Escribe el nombre del país, para conocer el estadio"
# equipos.each do |equipo|
#     puts equipo[:nombre]
# end

# pais = gets.chomp.downcase
# pais_encontrado = false # nil

# equipos.each do |equipo|
#     if equipo[:nombre].eql? pais
#         puts equipo[:estadio]
#         pais_encontrado = true #asginando variable a true
#     end
# end

# if pais_encontrado == true # preguntando si algo es igual a otro algo
#     puts "pais no encontrado"
# end

# #EJEMPLO2 UTILIZANDO ELEMENTOS DECLARADOS EN EJEMPLO 1

# # #i=0

# # equipos.each do |equipo|
# #     # i +=1
# #     # print i, "  " ,equipo[:nombre]    #OTRO METODO
# #     # puts
# # end

# equipos.each_with_index do |equipo, index|
#     puts "#{index+1} \t #{equipo[:nombre]}"

# end
# puts "===".center(20, "=")
# puts "Selecciona pais local : "
# pos_local = gets.chomp.to_i - 1
# puts "Selecciona pais visita : "
# pos_visita = gets.chomp.to_i - 1

# partido ={} #hash.new

# # partido[:local] = equipos[pos_local][:nombre]
# # partido[:visitante]= equipos[pos_visita][:nombre]
# # partido[:estadio] = equipos[pos_local][:estadio]

# partido={
#     local: equipos[pos_local][:nombre],
#     visitante: equipos[pos_visita][:nombre],
#     estadio: equipos[pos_local][:estadio]
#     }

# puts partido

# arreglo = [2, 4, 6, 8, 10]

# puts arreglo[50]

#EJEMPLO 3

# otra solucion

# puts equipos
# for i in 1..5
#     equipos.shuffle!
#     equipo_local = equipos.shift        # OTRO METODO
#     equipos_visitante = equipos.pop
#     puts "#{equipo_local[:nombre]} v/s #{equipo_visita[:nombre]}"
# end

numeros_sorteo = []
for i in 0..9
    sorteo = rand(0..9)
    while numeros_sorteo.any? sorteo
        sorteo = rand(0..9)
    end
    numeros_sorteo.push sorteo
end

i=0
while i<10
    pos_equipo_local = numeros_sorteo[i]
    pos_equipo_visita = numeros_sorteo[i+1]
    puts "#{equipos[pos_equipo_local][:nombre].capitalize} v/s #{equipos[pos_equipo_visita][:nombre].capitalize}"
    i+=2
end
#puts partido


