# p027readwrite.rb
File.open('p014constructs.rb', 'r') do |f1|
    while line = f1.gets
        puts line
    end
end

# cria um novo arquivo e escreve nele
File.open('test.rb', 'w') do |f2|
    f2.puts 'criado por Deus, graças a Deus'
end


require 'find'
Find.find('./') do |f|
    type = case
        when File.file?(f) then 'F'
        when File.directory?(f) then 'D'
        else '?'
        end
    puts "#{type}: #{f}"
end

puts 'Ola EUA'

f = File.new('hellousa.rb')

f.seek(10, IO::SEEK_SET)
print f.readline
f.close

cargos = {
    'project-manager': 0,
    'team-lead': 1,
    'backend-developer': 4,
    'frontend-developer': 2,
    'ux-designer': 0,
    'graphic-designer': 1,
    'devops-engineer': 1,
    'qa-engineer': 1
}

e = cargos.each_pair
hl = e.each {|cargo, medal| puts "#{cargo}: #{'🥇' * medal}"}
hl