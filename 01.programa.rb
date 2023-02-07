# p001ola.rb
puts 'olow'

# p002numerosruby.rb
=begin
    Números Ruby
    Operadores comuns:
    + adição
    - subtração
    * multiplicação
    / divisão
=end

puts 1 + 2
puts 2 * 3

puts 3 / 2
puts 10 - 11
puts 1.5 / 2.6

puts (5 % 3)
puts (-5 % 3)
puts (5 % -3)
puts (-5 % -3)

puts nil || 2008 # || or OR
puts false || 2008
puts 'ruby' || 2008

# #tricks
# @variavel = @variavel || 'valor padrão'
# # ||
# @variavel ||= 'valor padrão'

# if a = f(x) and b = f(y) and c = f(z) then d = g(a,b,c) end


# p003stringruby.rb
=begin
    strings ruby
    em ruby, strings são mutáveis
=end

puts "olá mundo"
puts 'olá mundo'
puts 'eu gosto de ' + 'ruby'
puts 'it\'s my ruby'
puts 'olá' * 3
puts '🥇' * 3
PI = 3.1416
puts PI

puts `ls`

# system('tar xzf teste.tgz')

s = 'Olá mundo!'
x = 10

minha_string = 'Eu amo minha cidade'
puts minha_string

=begin
    conversões
    .to_i, .to_f, .to_s
=end
# var1 = 5
# var2 = '2'
# puts var1 . var2.to_i

# a = 'olá '
# a << 'mundo'
# puts a

=begin 
    << marca o início de seu literal string e
    é seguido por um delimitador de sua escolha.
    O literal string inicia então na próxima linha
    e termina quando o delimitador é repetido em
    uma linha onde ele aparece sozinho.
    Isso é conhecido como "Here document syntax".
a = << FIM_STR  
Essa é a string  
E uma segunda linha  
FIM_STR  
puts a
=end  

puts '#####################################'

cargos = {
    'project-manager': 0,
    'team-lead': 1,
    'backend-developer': 4,
    'frontend-developer': 2,
    'ux-designer': 1,
    'designer': 0,
    'devops': 1,
    'qa-engineer': 1,
}

cargos.each do |cargo, medals|
    if medals != 0
        puts "#{cargo} - #{'🥇' * medals}"
    else
        puts "#{cargo} - 0"
    end    
end


