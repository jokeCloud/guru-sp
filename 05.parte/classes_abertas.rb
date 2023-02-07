load 'outros_arquivos.rb'
# require 'outros_arquivos'

m = MotoCicleta.new('Yamaha', 'vermelha')
m.ligaMotor


class MotoCicleta
    def mostrarAttr
        puts 'A cor da motocicle é ' + @cor
        puts 'O Fabricante da motocicleta é ' + @fabricante
    end
end

m.mostrarAttr
m.ligaMotor
puts self.class
puts self

require 'arquivo-class-dog'

class Cachorro
    def late_alto
        puts 'AU! AU!'
    end
end

d = Cachorro.new('Labrador', 'benzy')
d.uiva
d.late_alto
d.display

class String
    def escreve_tamanho
        self.size
    end
end
escritor_de_tamanho = 'conte-me meu tamanho'
puts escritor_de_tamanho.escreve_tamanho