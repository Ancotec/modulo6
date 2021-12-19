require 'faker'

class Monstruo

    attr_accessor :nombre
    attr_accessor :vida
    attr_accessor :ataque
    
    # grupo2
    def initialize(nombre = Faker::Games::StreetFighter.character, vida = rand(100..150), ataque = rand(10..15))
        @nombre = nombre
        @vida   = vida
        @ataque = ataque
    end

    def atacar(monstruo_enemigo)
        if rand(1..100) < 70
            monstruo_enemigo.vida -= @ataque
            puts "#{@nombre} ataca a #{monstruo_enemigo.nombre} con #{@ataque}"
            puts "#{monstruo_enemigo.nombre} quedo con : #{monstruo_enemigo.vida} HP"
            puts
        else
            puts "¡#{@nombre} FALLO !"
        end
    end

    def to_s
        "#{@nombre} | #{@vida} | #{@ataque}"
    end

    
end