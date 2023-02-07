prc = lambda {"olá"}

prc.call

brinde = lambda do
    puts 'viva'
end
brinde.call

prc = lambda {puts 'hello'}
puts prc.class


def algum_metodo algum_proc
    puts 'Inicio do método'
    algum_proc.call
    puts 'fim do método'
end

fale = lambda do
    puts 'olá'
end

algum_metodo fale

um_bloco = lambda { |x| puts x }
um_clobo.call 'Olá Mundo!'