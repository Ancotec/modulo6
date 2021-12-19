#require_relative 'menu'

class GestorArchivos

    def self.guardar_saldo(cuenta_nueva)
        File.open("saldo.txt","w") do |archivo|
            archivo.write(" #{Time.now.strftime("%m %d %Y")}, Saldo actual : #{cuenta_nueva.monto} ")
        end
    end

    # def self.guardar_historial
    #     File.open("historial.txt","a") do |archivo|
    #         archivo.write(" El historial es : #{@cuenta_nueva.tipo_movimiento}/n")
    #     end
    # end
end
