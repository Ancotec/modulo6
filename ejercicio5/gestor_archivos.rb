class GestorArchivos

    def self.guardar(batalla)
        File.open("batallas_guardadas.txt","w") do |archivo|
            archivo.write "#{batalla.monstruo1.nombre} v/s #{batalla.monstruo2.nombre}"
        end
    end
end