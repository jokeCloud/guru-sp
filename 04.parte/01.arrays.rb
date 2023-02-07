# p018arrays.rb

var1 = []

puts var1[0]

var2 = [5]

puts var2[0]

var3 = ['olá', 'tchau']
puts var3[0]
puts var3[1]

sabor = 'manga'

var4 = [80.5, sabor, [true, false]]
puts var4[2]

name = ['jon', 'mark', 'mary', 'peter']

puts name[0]
puts name[1]
puts name[2]
puts name[3]

puts name[4]

name[4] = 'joseph'
puts name[4]

name[5] = 4.33
puts name[5]

name[6] = [1, 2, 3]
puts name[6]

newarr = [45, 23, 1, 90]
puts newarr.sort
puts newarr.length
puts newarr.first
puts newarr.last


linguas = ['pt', 'en', 'es']

linguas.each do |lang|
    puts 'Eu amo ' + lang + '!'
    puts 'você não?'
end

linguas.delte('es')

linguas.each do |lang|
    puts 'Eu amo ' + lang + '!'
    puts 'você não?'
end



# p019mtdarry.db
def mtdarry
    10.times do |num|
        quadrado = num * num
        return num, quadrado if n > 5
    end
end

# usando atribuição paralela para coletar o valor de retorno
num, quadrado = mtdarry
puts num
puts quadrado

a = 1, 2, 3, 4
b = [1, 2, 3, 4]

a, b = 1, 2, 3, 4
c, = 1, 2, 3, 4

ENV.each {|k, v| puts "#{k}: #{v}"}
ENV['course'] = 'FORPC101'
puts "#{ENV['course']}"


##############
f = ARGV[0]
puts f

ruby tmp.rb 23

require 'getoptlong'

unless ARGV.length == 4
    puts 'Uso: ruby tsftpc.rb -hftp_site_url =nport_no -uuser_name -ppassword'
    exit
end

host_name = port_no = user_name = password = ''

opts = GetoptLong.new(
    [ "--hostname", "-h", GetoptLong::REQUIRED_ARGUMENT ],
    [ "--port", "-n", GetoptLong::REQUIRED_ARGUMENT ],
    [ "--username", "-u", GetoptLong::REQUIRED_ARGUMENT ],
    [ "--pass", "-p", GetoptLong::REQUIRED_ARGUMENT ]
)

opts.each do |opt, arg|
    case opt
        when '--hostname'
            host_name = arg
        when '--port'
            port_no = arg
        when '--username'
            user_name = arg
        when '--pass'
            password = arg
    end
end

str = 'ola'
print Array(str).class

str = 'ola\nmundo'
print Array(str)

a = [1, 2, 3, 4]
print a.class.ancestors

[Array, Enumerable, Object, Kernel, BasicObject]