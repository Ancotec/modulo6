# def dividir_entre_digitos (numeros)
#     puts "hola desde mi primer metodo"
#     resultado = numeros.each do |n|
#                     n / n.to_s.length
#                 end
#     return resultado
# end

# print dividir_entre_digitos([5,2,3,6,4,9,7])


# #Ejercicio 3
# arreglo1=[5,2,3,6,4,9,7]
# arreglo2=[69, 6043, 2407, 6825, 3078, 4605, 8158, 1597, 4341, 6717, 7476, 2868, 1520, 511, 733, 1098, 5068, 7906, 8780, 5873, 8008, 8346, 1992, 1909, 603, 1023, 7051, 2683, 5065, 7378, 3568, 5325, 7856, 5497, 6388, 890, 5559, 4656, 8182, 32, 550, 5256, 4505, 2760, 1479, 8552, 6551, 8412, 5595, 2971, 781, 5667, 8082, 3806, 2463, 6015, 5493, 5182, 2255, 4623, 845, 6099, 7952, 8437, 1291, 3078, 2765, 1893, 6798, 1473, 4672, 5901, 3090, 2934, 6246, 5297, 960, 5683, 31, 2989, 4187, 8809, 788, 3720, 4955, 2859, 1392, 2481, 8132, 752, 1382, 4115, 3504, 2574, 5893, 4337, 661, 2018, 692, 414]
# def parimpar(arreglo)
#  resultado2 =arreglo.map do |n|
#      if n % 2 == 0
#          "par"
#      else
#          "impar"
#      end
#  end
#  return resultado2
# end

# puts parimpar(arreglo1)
# puts parimpar(arreglo2)

# #Ejercicio 4
# def filtrar_multiplos_de_tres(numeros_param)
#     resultado = numeros_param.select { |n| n%3==0}
#     return resultado
# end

# #Ejercicio 5
# def numeros_comienzan_y_terminan_/(numeros_param)
#     resultado = numeros_param.select {|n| n.to_s.start_with? "7" or n.to_s.end_with? "7"}
#     return resultado
# end


# #Ejercicio Encapsulando I
# def posiciones_10()
#     posiciones=[]
#     10.times do
#         posiciones << rand(0..100)
#     end
#     return posiciones
# end

#  print posiciones_10()


#Ejercicio Encapsulando II
# def posiciones_x(x)
#     posiciones=[]
#     x.times do
#         posiciones << rand(0..100)
#     end
#     return posiciones
# end

# puts "Ingrese cantidad de posiciones del arreglo"
# numero=gets.to_i
# print posiciones_x(numero)

# def posiciones_xyz(veces,desde,hasta)
#     posiciones=[]
#     veces.times do
#         posiciones << rand(desde..hasta)
#     end
#     return posiciones
# # end

# puts "Ingrese cantidad de posiciones del arreglo"
# numero1=gets.to_i
# puts "Ingrese numero mínimo de random"
# numero2=gets.to_i
# puts "Ingrese numero máximo de random"
# numero3=gets.to_i
# print posiciones_xyz(numero1,numero2,numero3)

def menu
    
    opcion=0
    while opcion!=4
        #system("clear")
        puts "Opciones"
        puts "1.- Banco"
        puts "2.- Suma Interior"
        puts "3.- Capicúa"
        puts "4.- Salir"
        puts "Ingrese Número de Operación a realizar"
    opcion = gets.to_i
    if opcion==1
        banco()
    elsif opcion==2
        sumainterior()
    elsif opcion==3
        capicua()
    elsif opcion==4
        puts "Gracias por preferirnos"
        
    else
        puts "Opción ingresada no existe, presione enter"
        gets
    end
end
end

def banco
system("clear")
puts "OPCION BANCO"
puts "Ingrese monto a retirar"
monto=gets.to_f
puts "Ingrese Saldo"
saldo=gets.to_f
if monto % 5 ==0 and (monto+0.5)<=saldo
    saldo -=  (monto+0.5)
    puts "su nuevo saldo es #{saldo}"
    gets
else
    puts "Monto no es multiplo de 5 o tiene saldo insuficiente #{saldo}"
    gets
end
end

def sumainterior
system("clear")
suma=0
puts "Ingrese número"
digitos=gets.to_i
if digitos<0
    digitos*=-1
    digitos.digits.each do |n|
    suma += n
    end
    suma*=-1
else
    digitos.digits.each do |n|
    suma += n
    end
end
puts suma
puts "Presione Enter para continuar"
gets
end

def capicua
    numerosreves=0
    digitos=0
    puts "ingrese un numero"
    digitos=gets.to_s
    numerosreves=digitos.reverse
    if digitos.to_i == numerosreves.to_i
        puts "#{numerosreves} CAPICUA"
    else
        puts numerosreves
    end
gets
end

menu