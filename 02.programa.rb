# puts 'Em qual idade você está?'
# STDOUT.flush
# cidade = gets.chomp
# puts 'A vidade é ' + cidade

# p007dt.rb
x = 7
x = "casa"
x = 7.5

puts 'eu amo ruby'.length

puts Float::DIG

puts Float::MAX

arroz_no_quadrado = 1
64.times do |quadrado|
    puts "No quadrado #{quadrado + 1} há #{arroz_no_quadrado} grão(s)"
    arroz_no_quadrado *= 2
end

puts 2 ** 64

s = 'olá'
puts s.class

puts 'Eu estou na classe = ' + self.class.to_s
puts 'Eu sou um objeto = ' + self.to_s
puts 'Os métodos do objeto são = '
puts self.private_methods.sort

5.times { puts "Ratos!\n" }
puts "Elefantes gostam de amendoins".length

puts self

# p008meusestudos.rb
# Um método retorna o valor do último comando executado

# Métodos que funcionam como perguntas são normalmente nomeados
# com um ponto de interrogação (?) no final

# Métodos que são "perigosos", ou modificam o objeto,
# podem ser nomeados com um ponto de exclamação (!) no final (Bang methods)

def ola
    puts 'olá'
end

ola

def ola1(nome)
    puts 'olá ' + nome
    return 'sucesso'
end

puts(ola1('samuel'))

def ola2 nome2
    puts 'olá ' + nome2
    return 'sucesso'
end

puts ola2 'jon'
puts(ola2 'jon')


# p009meusmetodos1.rb
# interpolação é o processo de inserir o resultado de uma expressão
# em uma string literal
# o operador de interpolação #{...} é avaliado separadamente
def mtd(arg1='jon', arg2='masterson', arg3='masterson')
    "#{arg1}, #{arg2}, #{arg3}"
end

puts mtd
puts mtd('ruby')


puts "100 x 5 = #{100 * 5}"

# p010aliasmtd.rb
# alias metodo_novo metodo_antigo
# Quando um método é apelidado, o novo nome aponta
# para uma cópia da implementação do método original

def metodo_antigo
    "método antigo"
end

alias metodo_novo metodo_antigo

def metodo_antigo
    'método antigo melhorado'
end

puts metodo_antigo
puts metodo_novo