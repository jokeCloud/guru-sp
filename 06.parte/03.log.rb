require 'logger'

Logger.new('este_mes_.log', 'monthly')

Logger.new('application.log', 20, 'daily')

Logger.new('application.log', 0, 100 * 1024 * 1024)


# logex.rb
# require 'logger'
$LOG = Logger.new('log_file.log', 'monthly')
def divide(numerador, denominador)
    $LOG.debug("Numerator: #{numerador}, denominador #{denominador}")
    begin
        result = numerador / denominador
    rescue Exception => e
        $LOG.error "Erro na divisão!: #{e}"
        resultado = nil
    end
    return resultado
end

divide(10, 2)
divide(10, 0)

$LOG.level = Logger::ERROR

