# p040myhash.rb
h = {'cachorro' => 'canino', 'gato' => 'felino', 'burro' => 'asinino', 12 => 'dodezino'}

puts h.length
puts h['cachorro']
puts h
puts h[12]

# p0411symbolhash.rb
pessoa = Hash.new
pessoa[:apelido] = 'guruindiano'
pessoa[:idioma] = 'marata'
pessoa[:sobrenome] = 'talim'
puts pessoa[:sobrenome]

h = {:apelido => 'guruindiano', :idioma => 'marata', :sobrenome => 'talim'}
puts h

{:apelido=>"guruindiano", :idioma=>'marata', :sobrenome=>'talim'}


# p026phrase.rb
=begin
    Se você chamar **rand** terá um float maior que
    ou igual a 0.0 e menor que 1.0. Se você der a ele
    um parâmetro inteiro (chamando, por exemplo, rand(5)),
    você obterá um valor inteiro maior que ou igual a 0
    e menor que 5
=end
 
# O programa abaixo faz três listas de palavras e
# então escolhe aleatoriamente uma palavra
# para cada uma das três listas e imprime o resultado
 
lista_palavras_um = ['24/7', 'multicamada', '30,000 pés', 'B2B', 'win-win',
                     'front-end', 'web-based', 'pervasivo', 'inteligente',
                     'seis-sigma', 'caminho-crítico', 'dinâmico']
 
lista_palavras_dois = ['empowered', 'sticky', 'value-added', 'orientado',
                       'centrado', 'distribuído', 'agrupado', 'branded',
                       'fora-da-caixa', 'posicionado', 'em rede', 'focado',
                       'alavancado', 'alinhado', 'targeted', 'compartilhado',
                       'cooperativo', 'acelerado']
 
lista_palavras_tres = ['processo', 'tipping-point', 'solução', 'arquitetura',
                       'competência central', 'estratégia', 'mindshare',
                       'portal', 'espaço', 'visão', 'paradigma', 'missão']
 
tamanho_um = lista_palavras_um.length
tamanho_dois = lista_palavras_dois.length
tamanho_tres = lista_palavras_tres.length

rand1 = rand(tamanho_um)
rand2 = rand(tamanho_dois)
rand3 = rand(tamanho_tres)

frase = lista_palavras_um[rand1] + " "
        + lista_palavras_dois[rand2] + " " + lista_palavras_tres[rand3]
 
puts frase
