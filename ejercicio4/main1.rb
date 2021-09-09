require_relative 'modulo_usuarios'
include ModuloUsuarios

usuarios_main = generar_usuarios_con_gustos(10)

print usuarios_main
puts