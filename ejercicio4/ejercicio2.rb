#GUIA DE REFORZAMIENTO

#EJEMPLO 2
#sumar solo pares
#dado un numero

# puts "ingresa un numero"
# n=gets.to_i

# suma = 0
# for i in 1..n
#     numero_generado = rand(1..100)#generar numeros al azar
#     puts numero_generado
#     if numero_generado % 2 == 0 # verifica si es par
#         suma +=numero_generado
#         puts suma
#     end
#     puts"-------"
    
# end


# #EJEMPLO 3 contar negativos y positivos
# n=0
# while n<=0
#     puts "Ingrese cantidad de numeros a evaluar"
#     n = gets.to_i
#     arreglo_numeros=[]
#     for i in 1..n
#         arreglo_numeros << rand(-100..100)
#     end
#     if n==0
#         puts "#{n}"
#         puts " Nada que contar por aqui "
#     end
#     puts "--------"
# end
# mayores = arreglo_numeros.select{|n| n>0}
#     puts "#{mayores}"
#     print "#{mayores.length}" ," positivos"
#     puts
#     puts "---------"
# menores = arreglo_numeros.select{|n| n<0}
#     puts "#{menores}"
#     print  "#{menores.length}"," negativos"
#     puts

    

#for i in 0..n-1 
    # if arreglo_numeros[i] < 0
    #     cont_menor += 1
    #     if i==n-1 
    #         print arreglo_numeros[i]
    #         else
    #             print "#{arreglo_numeros[i]},"
    #     end
    # elsif arreglo_numeros[i]>0
    #     cont_mayor += 1
    #     if i==n-1 
    #         print arreglo_numeros[i]
    #         else
    #             print "#{arreglo_numeros[i]},"
    #     end
    # end

#end


# #Ejemplo 4 Esto es par o impar

# n = 0
# puts " Ingresar numero a evaluar : "
# n = gets.to_i
# if n.even?
#     print "#{n} es numero par"
#     else
#         print "#{n} es numero impar"
# end


#Ejemplo 5 Orden en la fila

puts "ingrese nombres separados por espacio / <enter> para terminar"
cadena_nombres = gets
puts"------"
acum=0
nombres_separados = cadena_nombres.split(" ")
nobre
puts "#{nombres_separados.reverse}, " " , #{acum}"
    acum +=1

