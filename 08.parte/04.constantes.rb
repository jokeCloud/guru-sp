# p054constwarn.rb

A_CONST = 10
A_CONST = 20

# p055constalter.rb
A_CONST = 'doji'
B_CONST = A_CONST
A_CONST[2] = "G"
puts A_CONST
puts B_CONST

CONSTANTE_EXTERNA = 99

class Constante
    def pega_constante
        CONSTANTE
    end
    CONSTANTE = CONSTANTE_EXTERNA + 1
end

puts Constante.new.pega_constante
puts Constante:CONSTANTE
puts ::CONSTANTE_EXTERNA
puts Constante::NOVAO_CONSTANTE = 123

$glob = 5
class TestVar
    @@cla = 6
    CONST_VAL = 7
    def initialize(x)
        @inst = x
        @@cla += 1
    end
    def self.cla
        @@cla
    end
    def self.cla=(y)
        @@cla = y
    end
    def inst
        @inst
    end
    def inst=(i)
        @inst = i
    end
end

puts $glob
test = testVar.new(3)
puts test.inspect
TestVar.cla = 4
test.inst=8
puts TestVar.cla
puts test.inst
other = TestVar.new(17)
puts other.inspect
puts TestVar.cla
