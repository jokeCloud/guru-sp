# ri Array # irb -> ri --help -> Array
# ri Array.sort
# ri Hash#each
# ri Hash::each
# ri Math::sqrt

# p013exprint.rb
def diz_boanoite(nome)
    resultado = "Boa noite, #{nome}"
    return resultado
end
puts diz_boanoite('jon')

def diz_boanoite2(nome)
    "Boa noite, #{nome}"
end

puts diz_boanoite2('jon')

string_methods = [String.methods.sort]
puts string_methods

string_methods_instance = String.instance_methods.sort

String.instance_methods(false).sort # sem métodos de classes ancestrais


# p013strcmp.rb
# String#eql?, testa se duas strings tem conteúdo idêntico.
# Retorna o mesmo resultado que ==
# String#equal?, teste se duas strings são o mesmo objeto

s1 = 'jonatan'
s2 = 'jonatan'
s3 = s1

if s1 == s2
    puts 'ambas strings têm o mesmo conteúdo'
else
    puts 'ambas strings não tem o mesmo conteúdo'
end
if s1.eql?(s2)
    puts 'ambas strings têm o mesmo conteúdo'
else
    puts 'ambas strings não tem o mesmo conteúdo'
end
if s1.equal?(s2)
    puts 'as duas strings são objetos idênticos'
else
    puts 'as duas strings são objetos idênticos'
end
if s1.equal?(s3)
    puts 'as duas strings são objetos idênticos'
else
    puts 'as duas strings são objetos idênticos'
end

nomes1 = [ 'marcelo', 'hugo', 'william', 'ricardo', 'rafael' ]
puts nomes1[0]
puts nomes1[3]

nomes2 = %w{ marcelo hugo william ricardo rafael }
puts nomes2[0]
puts nomes2[3]

puts nomes2.map(&:upcase)


# no ruby nil e false são interpretados como false (falso).
# todo o restante (incluindo true e 0) significam (verdadeiro)
# nil é um objeto real
# if else end (se, caso contrário, fim)

var = 5
if var > 4
    puts 'Variavel é maior que 4'
    puts 'Posso ter múltiplas declarações aqui'
    if var == 5
        puts 'É possível ter if else aninhados'
    else
        puts 'Muito legal'
    end
else
    puts 'A variável não é maior que 4'
    puts 'Posso ter múltiplas declarações aqui'
end

# p015elsifex.rb
# examplo elseif

# exemplo original
puts 'olá, qual é o seu nome?'
STDOUT.flush
nome = gets.chomp
puts 'Olá, ' + nome + '.'

if nome == 'jon'
    puts 'Que nome legal!'
else
    if name == 'mark'
        puts 'outro nome legal!'
    end
end

# exemplo modificado com elsif
puts 'Olá, qual é o seu nome?'
STDOUT.flush
nome = gets.chomp
puts 'Hello, ' + nome + '.'

if nome == 'jon'
    puts 'que nome legal!'
elsif nome == 'mark'
    puts 'outro nome legal!'
end

puts 'Olá, qual seu nome?'
STDOUT.flush
nome = gets.chomp
puts 'Olá, ' + nome + '.'

# || é o operador lógico OU
if nome == 'jon' || nome == 'mark'
    puts 'que nome legal!'
end

unless ARGV.length == 2
    puts 'Uso> programa.rb 23 45'
    exit
end

var = 0
while var < 10
    puts var.to_s
    var += 1
end

idade = 15

puts (14...20).include?(idade) ? "adolescente" : "não é adolescente"

idade = 23
pessoa = (14...20).include?(idade) ? "adolescente" : "não é adolescente"
puts pessoa

puts 'os registro pararão agora' if participantes > 2500


# case
ano = 2000
bissexto = case
    when ano % 400 == 0 then true
    when ano % 100 == 0 then false
    else ano % 4   == 0
    end
puts bissexto


puts NIL.class
puts nil.class
puts nil.object_id

puts FALSE.class
puts false.class
puts false.object_id

saudacao {puts 'ola'}

saudacao_verbosa('puneruby') {puts 'olá'}

# p022codeblock.rb
=begin
    os blocos de código ruby são pedaços de código entre chaves ou entre
    do end que você pode associar com invocações (chamadas) de método
=end

def chama_bloco
    puts 'inicio do método'
    # você pode chamar o método com a palavra-chave yield
    yield
    yield
    puts 'fim do metodo'
end

chama_bloco {puts 'dentro do bloco'}

def chama_bloco
    yield('ola', 99)
end

chama_bloco {|str, num| puts str + ' ' + num.to_s }

def tentar
    if block_given?
        yield
    else
        puts 'nenhum bloco'
    end
end

tentar
tentar { puts 'ola'}
tentar do puts 'ola' end


x = 10
5.times do |x|
    puts "x dentro do bloco: #{x}"
end

puts "x fora do bloco #{x}"


x = 10
5.times do |y|
    x = y
    puts "x dentro do bloc: #{x}"
end

puts "x fora do bloco #{x}"

