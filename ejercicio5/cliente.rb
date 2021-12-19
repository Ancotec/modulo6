class Cliente
    # atributos / variables / datos / propiedades
    attr_accessor :nombre # @nombre, con arroba para utilizar este campo/atributo en otro lugar
    attr_accessor :apellido
    attr_accessor :rut
    attr_accessor :frutas_favoritas
    attr_accessor :frecuencia_de_compra
    # métodos / acciones / funciones

    def initialize(nombre= "", apellido = "", rut = "", frutas_favoritas = [], frecuencia_de_compra)
        @nombre                 = nombre
        @apellido               = apellido
        @rut                    = rut
        @frutas_favoritas       = frutas_favoritas
        @frecuencia_de_compra   = frecuencia_de_compra
        @variable_nueva         = ""
        contador                = 0
    end

    def mostrar_nuevo
        @contador +=1
        puts "soy elcontador #{@nombre}"
        puts "soy la jueva sin attr_accessor #{variablenueva}"
    end

    def saludar
        puts "Hola soy #{ @nombre }"
    end

    def imprimir_datos
        puts @nombre
        puts @apellido
        puts @rut
        puts @frutas_favortias
        puts @frecuencia_de_compra
    end
end
cliente1 = Cliente.new("Leandro","Vidal","12345678-9",["uvas","naranjas"], :semanal) # crea un cliente vacío
# cliente1.nombre = "rene"        # atributos
# cliente1.apellido = "rodriguez"
# cliente1.rut = "987466322-9"
# cliente1.frutas_favortias = ["uvas", "naranjas", "sandías", "mandarinas"]

# cliente1.frecuencia_de_compra = "cada 3 días"
cliente1.imprimir_datos     # método

cliente2 = Cliente.new("David","Alcalde","87654321-9",["peras","naranjas"],:semanal)
#cliente2.nombre = "Davida"    # atributos
# cliente2.apellido = "Alcalde"
# cliente2.frutas_favortias =  ["naranjas", "manzanas", "paltas"]
# cliente2.frecuencia_de_compra = "semanal"

cliente2.saludar
cliente2.imprimir_datos