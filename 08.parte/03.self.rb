x = 1

def m
end

puts self

# p063xselfi.rb
class S
    puts 'Acabei de começar a classe S'
    puts self
    module M
        puts 'Módulo aninhado S::M'
        puts self
    end
    puts 'De volta ao nível externo de S'
    puts self
end

# p063xself2.rb
class S
    def m
        puts 'Classe s método m:'
        puts self
    end
end
s = S.new
s.m

# p063xself3.rb
obj = Object.new
def obj.show
    print 'Sou um projeto'
    puts 'Aqui self está dentro de um método singleton que me pertence'
    puts self
end
obj.show

print 'e inspecionando o objeto por fora'
puts 'para ter certeza que é o mesmo objeto'
puts obj

# p063xself4.rb
class S
    def S.x
        puts "Método de classe da classe S"
        puts self
    end
end
S.x

