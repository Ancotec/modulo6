require_relative 'generador_monstruos'
require_relative 'gestor_archivos'

class Batalla

    attr_reader :monstruo1
    attr_reader :monstruo2
    attr_reader :ganador
    attr_reader :rondas

    def initialize
        @monstruo1 = GeneradorMonstruos.generar_pokemon
        @monstruo2 = GeneradorMonstruos.generar_pokemon
        @rondas = 0
        @segundos = 0.5
    end

    def comenzar
        mostrar_mensajes_iniciales

        while @monstruo1.vida > 0 and @monstruo2.vida > 0
            #monstruo1 ataca a monstruo2
            if @monstruo1.vida > 0
                sleep(@segundos)
                @monstruo1.atacar(@monstruo2)
            end
            #monstruo2 ataca a monstruo1
            
            sleep(1)
            @monstruo2.atacar(@monstruo1)
        end
        quien_es_el_ganador?
    end

    private 

    def quien_es_el_ganador?
        puts "Fin de la Simulacion"
        puts "gano..."
        if @monstruo1.vida>0
            puts @monstruo1
        else
            puts @monstruo2
        end
        GestorArchivos.guardar(self)
    end

    def mostrar_mensajes_iniciales
        puts "Batalla".center(20,"=")
        puts @monstruo1
        puts @monstruo2
        puts "Presione [enter] para iniciar.."
        gets
        puts "Inicio Simulacion"
    end
end