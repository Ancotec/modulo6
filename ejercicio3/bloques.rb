def prueba_bloque(param)
    puts "estoy en el metodo #{param}"
    yield
    puts "segundo mensaje #{param}"
    yield
    puts "sigo en el metodo #{param}"
    yield "nombre", "torta"
end

prueba_bloque(6) { |n, otro|
    puts "desde el bloque"
    if n
        puts "desde el metodo #{n}"
        puts "desde el metodo #{otro}"
    end
}

prueba_bloque(6) {|n, otro|
    puts "segundo bloque mismca cabecera"
}
