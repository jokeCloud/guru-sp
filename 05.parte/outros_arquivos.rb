# load e require são equivalentes mas trabalham de maneira diferente
# load 'nome_do_arquivo.rb'
# require 'nome_do_arquivo'

class MotoCicleta
    def initialize(fabricante, cor)
        @fabricante = fabricante
        @cor = cor
    end

    def ligaMotor
        if (@estado_motor)
            puts 'O motor já está ligado'
        else
            @estado_motor = true
            puts 'motor ocioso'
        end
    end
end

# require 'p030motorcycle'
m = MotoCicleta.new('Yamaha', 'vermelha')
m.ligaMotor