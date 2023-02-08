# p058mytrig.rb
module Trig
    PI = 3.1416
    
    def Trig.sin(x)
    end

    def Trig.cos(x)
    end
end

# p059mymoral.rb
module Moral
    VERY_BAD = 0
    BAD      = 1
    def Moral.sin(badness)
    end
end

# p060usemodule.rb
# require 'p058mytrig'
# require 'p059mymoral'
Trig.sin(Trig::PI/4)
Moral.sin(Moral::VERY_BAD)

# p061mixins.rb
module D
    def initialize(nome)
        @nome = nome
    end
    def to_s
        @nome
    end
end

module Debug
    include D

    def quem_sou_eu?
        "#{self.class.nome} (\##{self.object_id}): #{self.to_s}"
    end
end

class Phonograph
    include Debug
end

class EightTrack
    include Debug
end

ph = Phonograph.new('West End Blues')
et = EightTrack.new('Real Pillow')
puts ph.quem_sou_eu?
puts et.quem_sou_eu?


module Coisa
    C = 10
    def Coisa.m(x)
        C*x
    end
    def p(x)
        C + x
    end
    class T
        @t = 2
    end
end

puts Coisa::C
puts Coisa.m(3)
x = Coisa::T.new

# p063stuffusage.rb
# require 'p062stuff'

class D
    include Coisa
    puts Coisa.m(4)
end

d = D.new
puts d.p(5)
puts $:
$: << "c:/"
puts $:
puts Coisa.m(5)