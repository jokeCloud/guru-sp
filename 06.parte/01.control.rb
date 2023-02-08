# p047classaccess.rb

class AcessoClasse
    def m1
    end
    protected
        def m2
        end
    private
        def m3
        end
end

ca = AcessoClasse.new
ca.m1

class AcessoClasse1
    def m1
    end
    public :m1
    protected :m2, :m3
    private :m4, :m5
end

# p047zclassaccess.rb
class Pessoa
    def initialize(idade)
        @idade = idade
    end
    def idade
        @idade
    end
    def compara_idade(c)
        if c.idade > idade
            'a idade do outro objeto é maior'
        else
            'a idade do outro objeto é menor'
        end
    end
    protected :idade
end

chris = Pessoa.new(25)
marcos = Pessoa.new(34)
puts chris.compara_idade(marcos)

# p048accessor.rb
class Musica
    def initialize(nome, artista)
        @nome = nome
        @artista = artista
    end
    def nome
        @nome
    end
    def artista
        @artista
    end
end

musica = Musica.new('Brasil', 'aaa')
puts musica.nome
puts musica.artista


class Musica1
    def initialize(nome, artista)
        @nome = nome
        @artista = artista
    end
    attr_reader :nome, :artista
    
    # attr_accessor     leitura e escrita
    # attr_writer       escrita
end

musica = Musica1.new('Brasil', 'ddd')
puts musica.nome
puts musica.artista


# p049instvarinherit.rb
class C
    def initialize
        @n = 100
    end

    def aumenta_n
        @n *= 20
    end
end

class D < C
    def mostra_n
        puts "n é #{@n}"
    end
end

d = D.new
puts d.mostra_n
puts d.aumenta_n
puts d.mostra_n



puts self

main

def fala
    puts 'ola'
end

puts 'ola'