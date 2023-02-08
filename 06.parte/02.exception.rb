# p043raise.rb
def levanta_excecao
    puts 'Estou antes do raise'
    raise 'um erro ocorreu'
    puts 'estou depois do raise'
end

# levanta_excecao

def inverte(x)
    raise ArgumentError, 'O orgumento não é numérico' unless x.is_a? Numeric
    1.0 / x
end

puts inverte(2)
puts inverte('não é um número')

class NotInvertibleError < StandardError
end

# p045handexcp.rb
def levanta_e_resgata
    begin
        puts 'estou antes do raise'
        raise 'um erro ocorreu'
        puts 'estou depois do raise'
    rescue
        puts 'fui resgatado'
    end
    puts 'estou depois do bloco begin'
end
levanta_e_resgata


# p046excpvar.rb
begin
    raise 'uma exceção para teste'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
end


# p046xreadwrite.rb
# abra e leia um arquivo texto
# note que visto que um bloco é dado, o arquivo será fechado automaticamente
begin
    File.open('p014constructs.rb', 'r') do |f1|
        while line = f1.gets
            puts line
        end
    end

    # Cria um novo arquivo e escreve nele
    File.open('test.rb', 'w') do |f2|
        f2.puts 'Criado por jon, Graças a Deus'
    end
rescue Exception => msg
    puts msg
end



class Nome
    attr_reader :primeiro, :ultimo

    def primeiro=(primeiro)
        if primeiro == nil or first.size == 0
            raise ArgumentError.new('Todos precisam ter um primeiro nome.')
        end
        primeiro = primeiro.dup
        primeiro[0] = primeiro[0].chr.capitalize
        @primeiro = primeiro
    end

    def ultimo=(ultimo)
        if ultimo == nil or ultimo.size == 0
            raise ArgumentError.new('Todos devem ter um último nome.')
        end
        @ultimo = ultimo
    end

    def nome_completo
        "#{@primeiro} #{@ultimo}"
    end

    def initialize(primeiro, ultimo)
        self.primeiro = primeiro
        self.ultimo = ultimo
    end
end

jacob = Nome.new('jacob', 'berendes')
jacob.primeiro = 'Mary'
puts jacob.nome_completo
john = Nome.new('John', 'von Neumann')
john.primeiro = 'john'
puts john.primeiro
john.ormeiro = nil

Name.new('Kero, estrela internacional do futebol e artista de performance')