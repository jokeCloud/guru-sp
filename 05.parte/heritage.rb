class Mamifero
    def respira
        puts 'inspira e expira'
    end
end

class Gato < Mamifero
    def fala
        puts 'mial'
    end
end

rani = Gato.new
rani.respira
rani.fala

class Ave
    def limpase
        puts 'estou limpando minhas penas'
    end

    def voa
        puts 'estou voando.'
    end
end

class Pinguim < Ave
    def voa
        puts 'prefiro nadar.'
    end
end

p = Pinguim.new
p.limpase
p.voa


class GF
    @m = 10
    puts @m.object_id
    def initialize
        puts 'Na classe GF'
    end

    def gfmethod
        puts 'chamada de metodo de GF'
    end
end

class F < GF
    def initialize
        super
        puts 'Na classe F'
    end
end

class S < F
    def initialize
        super
        puts @m
        puts @m.object_id
        puts 'Na classe S'
    end
end

filho = S.new
filho.gfmethod


class Cachorro
    def initialize(raca)
        @raca = raca
    end
end

class Lab < Cachorro
    def initialize(raca, nome)
        super(raca)
        @nome = nome
    end

    def to_s
        "(#@raca, #@nome)"
    end
end

puts Lab.new('Labrador', 'Benzy').to_s

