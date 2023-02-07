puts //.class

puts /Pune|Ruby/

m1 = /Ruby/.match("o futuro do ruby")
puts m1.class
m2 = "o futudo do Ruby" =~ /Ruby/
puts m2

puts /a/

puts /\?/

puts /.ejected/

puts /[dr]ejected/

puts /[a-z]/

puts /[A-Fa-f0-9]/

puts /[^A-Fa-f0-9]/

puts /[0-9]/

puts /\d/

puts /\D/

puts /a/.match('b')

# p067regexxp.rb
string = 'Meu telefone é (123) 555-1234'
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)
unless m
    puts 'não houve casamento...'
    exit
end
print "Toda a string com que começamos: "
puts m.string
print "Toda a parte da string que foi casada: "
puts m[0]
puts "As três capturas: "
3.times do |index|
    puts "Captura ##{index + 1}: #{m.captures[index]}"
end
puts 'outro jeito de conseguir a primeira captura:'
print 'captura #1: '
puts m[1]
