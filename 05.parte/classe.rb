# p029dog.rb
class Cachorro
    def initialize(raca, nome)
        @raca = raca
        @nome = nome
    end

    def uiva
        puts 'Aooowwwllll'
    end

    def mostra
        puts "sou da raça #{@raca} e meu nome é #{@nome}"
    end
end

d = Cachorro.new('Labrador', 'Benzy')

=begin
    Cada objeto "nasce" com certas características inatas.
    Para ver uma lista dos métodos do objeto, você pode chamar
    o método methods (e usar uma operação de sort para facilitar)
    a visualização). Remova o comentário e execute
=end

# puts d.methods.sort

# Entre todos esses métodos, os métodos object_id
# e respond_to são importantes
# cada objeto no ruby tem um id único associado ao mesmo.

puts "O id do obj é #{d.object_id}"

# para saber se o objeto sabe como lidar com uma mensagem que
# você queira enviar a ele você pode usar o método respond_to?

if d.respond_to?("fala")
    d.fala
else
    puts "Desculpe, o objeto não entende a mensagem 'fala'."
end

d.uiva
d.mostra

# fazendo d e d1 apontar apara o mesmo objeto

d1 = d
d1.display

# tornnando d uma referência nula, o que significa
# que ele não se referencia a nada
d = nil
d.display

# se eu faço
d1 = nil

# então o objeto cachorro é abndonado e elegível para ser
# coletado para o lixo (GC)

puts d.methods.sort

puts "o id do objeto é #{d.object_id}."

if d.respond_to?('fala')
    d.fala
else
    puts 'desculpe, o objeto não entende a mensagem "fala".'
end

d1 = d
d1.display

d = Cachorro.new('Pastor', 'Menina')
puts d.class.to_s

num = 10
puts(num.instance_of? Fixnum)


class Dummy
    def method_missing(m, *args, &block)
        puts "Não há nenhum método chamado #{m} aqui."
    end
end
puts Dummy.new.qualquer_coisa

