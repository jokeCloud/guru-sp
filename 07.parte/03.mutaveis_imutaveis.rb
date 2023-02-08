str = 'uma string simples'
str.freeze
begin
    str << 'uma tentativa de se modificar'
rescue => err
    puts "#{err.class} #{err}"
end

str = 'string original - '
str.freeze
str += 'anexo'
puts str

a = b = 'string original'
b.freeze
puts a.frozen?
puts b.frozen?
a = 'nova string'
puts a
puts b
puts a.frozen?
puts b.frozen?

