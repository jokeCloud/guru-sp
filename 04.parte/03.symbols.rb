# p039symbol.rb
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id

puts :paralelepipedo.object_id
puts :paralelepipedo.object_id


class Test
    puts :Test.object_id.to_s
    def test
        puts :test.object_id.to_s
        @test = 10
        puts :test.object_id.to_s
    end
end
t = Test.new
t.test

# p039xysymbol.rb
sabe_ruby = :sim
if sabe_ruby == :sim
    puts 'Você é um rubista'
else
    puts 'Aprenda Ruby'
end

# p039xyzsymbol.rb
sabe_ruby = 'sim'
if sabe_ruby == 'sim'
    puts 'Você é rubista'
else
    puts 'Aprenda Ruby'
end

puts 'string'.to_sym.class
puts :symbol.to_s.class

