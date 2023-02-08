# p051gamecharacters.rb
class PersonagemDoJogo
    def initilize(poder, tipo, armas)
        @poder = poder
        @tipo = tipo
        @armas = armas
    end
    attr_reader :poder, :tipo, :armas
end

# p052dumpgc.rb
# require 'p051gamecharecters'

gc = PersonagemDoJogo.new(120, 'mago', [magias, 'invisibilidade'])
puts gc.poder.to_s + ' ' + gc.tipo + ' '
gc.armas.each do |w|
    puts w + ' '
end

File.open('jogo', 'w+') do |f|
    Marshal.dump(gc, f)
end

# p053loadgc.rb
# require 'p051gamecharacters'
File.open('joho') do |f|
    @gc = Marshal.load(f)
end

puts @gc.poder.to_s + ' ' + @gc.tipo + ' '
@gc.armas.each do |w|
    puts w + ' '
end


