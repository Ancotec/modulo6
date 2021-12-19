require_relative 'modulo_usuarios' #enlazar los archivos modulo usuario.rb
require_relative 'modulo_impresiones' #enlazar el archivo modulo impresiones.rb

include ModuloUsuarios #incluye al modulo usuarios
include ModuloImpresiones #incluye al modulo de impresiones

module Menu
def menu_usuario()
eleccion=0
while eleccion !=5
    eleccion=impresiones_menu
    if eleccion==1  
        arreglo_usuarios_correo_faker = generar_usuarios_correo(5)
        imprimir_usuarios_con_correos(arreglo_usuarios_correo_faker)   #OTRO FORMATO
    elsif eleccion==2
            arreglo_usuarios_con_gustos = generar_usuarios_con_gustos(6)
            imprimir_usuarios_con_gustos(arreglo_usuarios_con_gustos)
    elsif eleccion ==3
        puts "Ingrese la Cantidad de usuarios a desplegar"
        n=gets.to_i
        arreglo_usuarios_con_dc = generar_usuarios_con_dc(n)
        imprimir_usuarios_con_dc(arreglo_usuarios_con_dc)
    elsif
        opcion==4
        puts "Ingrese la Cantidad de usuarios a desplegar"
        n = gets.to_i
        arreglo_usuarios_con_nacion = generar_usuarios_con_nacion(n)
        imprimir_usuarios_con_nacion(arreglo_usuarios_con_nacion)
    end
    
    puts "Presione una tecla para volver al menu"

    gets
end
end
end