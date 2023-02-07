(1..10).to_a -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 # p021ranges.rb  

=begin
    Sequências tem um ponto de início, de término 
    e um modo de produzir valores sucessivos
    No Ruby, essas sequências são criadas usando os 
    operadores de intervalo ".." e "...".
    A forma com dois pontos cria uma série
    inclusiva e a forma de três pontos cria uma 
    série que exclui o valor mais alto especificado.
=end

digitos = -1..9
puts digitos.include?(5)
puts digitos.min
puts digitos.max
puts digitos.reject {|i| i < 5 }

(1..10) === 5
(1..10) === 15
(1..10) === 3.14159
('a'..'j') === 'c'
('a'..'j') === 'z'

