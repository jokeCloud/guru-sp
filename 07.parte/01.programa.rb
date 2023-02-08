puts ('Uma string'.respond_to? :to_str)
puts (Exception.new.respond_to? :to_str)
puts (4.respond_to? :to_str)

class Pato
    def quack
        'quack!'
    end

    def nadar
        'nadando nadando nadando...'
    end
end

class Ganso
    def grasnar
        'gransnando'
    end

    def nadar
        'splash splash splash'
    end
end

class PatoDonald
    def quack
        play
    end

    def play
        'quack! sou o pato donald'
    end
end

def faz_quack(pato)
    pato.quack
end

puts faz_quack(Pato.new)
puts faz_quack(PatoDonald.new)

def faz_nadar(duck)
    duck.nadar
end
puts faz_nadar(Pato.new)
puts faz_nadar(Ganso.new)


