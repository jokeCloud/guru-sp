class A
    def a
        puts 'na class A'
    end
end

class B < A
    def a
        puts 'Na classe B'
    end
end

b = B.new
b.a

class Bicicleta
    attr_reader :marchas, :rodas, :bancos
    def initialize(gears = 1)
        @rodas = 2
        @bancos = 1
        @marchas = gears
    end
end

class Tandem < Bicicleta
    def initialize(gears)
        super
        @bancos = 2
    end
end

t = Tandem.new(2)
puts t.marchas
puts t.rodas
puts t.bancos
b = Bicicleta.new
puts b.marchas
puts b.rodas
puts b.bancos


class OR
    def mtd
        puts 'primeira definição do método mtd'
    end
    def mtd
        puts 'primeira definição do método mtd'
    end
end

puts OR.new.mtd


class AbstractClass
    def bemvindo
        puts "#{ola} #{nome}"
    end
end

class ConcreteClass < AbstractClass
    def ola; "ola"; end
    def nome; "estudantes de Ruby"; end
end

puts ConcreteClass.new.bemvindo



class Retangulo
    def initialize(*args)
        if args.size < 2 || args.size > 3
            puts 'Este metodo recebe 2 ou 3 argumentos'
        else
            if args.size == 2
                puts 'dois argumentos'
            else
                puts 'tres argumentos'
            end
        end
    end
end

Retangulo.new([10, 23], 4, 10)
Retangulo.new([10, 23], [14, 13])