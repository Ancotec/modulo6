module ModuloImpresiones #algo que comentar
    
    def imprimir_usuarios_con_correos(arreglo_usuarios)

        conteo_letras = arreglo_usuarios.map{ |usuario| usuario[:nombre].length}
        align_nombre = conteo_letras.max + 5
        conteo_letras_correo = arreglo_usuarios.map{ |usuario| usuario[:email].length}
        align_correo = conteo_letras_correo.max + 5
        conteo_password = arreglo_usuarios.map{ |usuario| usuario[:password].length}
        align_password = conteo_password.max + 5
        puts "Nombre".ljust(align_nombre) + " | "+ "Email".ljust(align_correo) + " | "+ "Password".ljust(align_password)
        puts
        arreglo_usuarios.each { |usuario|
        puts "#{usuario[:nombre].ljust(align_nombre)  } | #{usuario[:email].ljust(align_correo)} | #{usuario[:password].ljust(align_password)}"
    }
    end

    def imprimir_usuarios_con_gustos(arreglo_usuarios)

        conteo_letras = arreglo_usuarios.map{ |usuario| usuario[:nombre].length}
        align_nombre = conteo_letras.max + 5
        conteo_juego = arreglo_usuarios.map{ |usuario| usuario[:juego].length}
        align_juego = conteo_juego.max + 5
        conteo_pelicula = arreglo_usuarios.map{ |usuario| usuario[:juego].length}
        align_pelicula = conteo_pelicula.max + 5

        puts "Nombre".ljust(align_nombre,"-") + " | "+ "Juego".ljust(align_juego,"-") + " | "+ "Pelicula".ljust(align_pelicula,"-")
        puts
        arreglo_usuarios.each { |usuario|
         puts "#{usuario[:nombre].ljust(align_nombre,'.')  } | #{usuario[:juego].ljust(align_juego,'.')} | #{usuario[:pelicula].ljust(align_pelicula,'.')}"
    }
    end

    def imprimir_usuarios_con_dc(arreglo_usuarios)
        espacio = 2
        conteo_letras = arreglo_usuarios.map{|usuario| usuario[:title].length}
        align_title = conteo_letras.max+espacio
        conteo_letras_name = arreglo_usuarios.map{ |usuario| usuario[:name].length}
        align_name = conteo_letras_name.max+espacio

        arreglo_usuarios.each { |usuario|
        puts "#{usuario[:title].ljust(align_title) }|#{usuario[:name].ljust(align_name)} |#{usuario[:hero].ljust(align_title)}"}
    end

    def imprimir_usuarios_con_nacion(arreglo_usuarios)

        conteo_nacionalidad = arreglo_usuarios.map{ |usuario| usuario[:nacionality].length}
        align_nacionalidad = conteo_nacionalidad.max + 5
        conteo_lenguaje = arreglo_usuarios.map{ |usuario| usuario[:lenguaje].length}
        align_lenguaje = conteo_lenguaje.max + 5
        conteo_capital = arreglo_usuarios.map{ |usuario| usuario[:capital].length}
        align_capital = conteo_capital.max + 5

        puts "Nacion".ljust(align_nacionalidad,"-") + " | "+ "idioma".ljust(align_lenguaje,"-") + " | "+ "Capital".ljust(align_capital,"-")
        puts
        arreglo_usuarios.each { |usuario|
        puts "#{usuario[:nacionality].ljust(align_nombre,'.')  } | #{usuario[:lenguaje].ljust(align_juego,'.')} | #{usuario[:capital].ljust(align_pelicula,'.')}"
    }
    end

    

    def impresiones_menu
        opcion=0
        loop do
            system("clear")
            puts
            puts "Opciones"
            puts "1.- Formato casillas vacias"
            puts "2.- Formato casillas con puntos"
            puts "3.- DcComics"
            puts "4.-     "
            puts "5.- Salir"
            puts "Ingrese Número de Operación a realizar"
            opcion = gets.to_i
            if opcion == 5                
                   return opcion
            elsif opcion == 1 or opcion == 2 or opcion == 3 or opcion == 4
                     return opcion
            end
        end
    end
end