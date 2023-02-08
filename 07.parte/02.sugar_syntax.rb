class NewDog
    def initialize(breed, name)
        @breed = breed
        @name = name
    end
    attr_reader :breed, :name
end

nd = NewDog.new('Doberman', 'benzy')
puts nd.name

# abstração, encapsulamento, herança e polimorfismo

def name=(nm)
    @name = nm
end

nd.name=('Benzy')

class NewCat
    def initialize(breed)
        @breed = breed
    end
    attr_reader :breed, :name

    def name=(nm)
        @name = nm
    end
end

nc = NewCat.new('kitten')
nc.name = 'bichento'
puts nc.name