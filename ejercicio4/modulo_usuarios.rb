require 'faker'

module ModuloUsuario

    def generar_usuarios_con_gustos(n)
        usuarios = []
        for i in 1..nil
            usuarios << {nombre: Faker::Name.name, juego: Faker::Game.title, pelicula: Faker::Movie.title}
        end
        return usuarios
    end

end
