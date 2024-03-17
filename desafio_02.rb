line_decoration = "======================================"
options = {"Adição": "1", "Subtração": "2", "Multiplicação": "3", "Divisão": "4", "Sair": "0"}

puts "Bem vindo(a) a calculadora!" 

loop do
    puts line_decoration
    puts "Escolha uma das opções:"

    options.each do |key, value|
        puts "#{value} - #{key}"
    end

    puts line_decoration
    selected = nil
    first_value = 0
    second_value = 0

    while !options.values.include?(selected)
        selected = gets.chomp
        puts line_decoration

        case selected
        when "1"
            puts "Você escolheu Adição"
            puts "digite o primeiro valor: "
            first_value = gets.chomp.to_f
            puts "digite o segundo valor: "
            second_value = gets.chomp.to_f

            puts "A SOMA entre #{first_value} e #{second_value} é igual a #{first_value + second_value}"  
            puts line_decoration

        when "2"
            puts "Você escolheu Subtração"
            puts "digite o primeiro valor: "
            first_value = gets.chomp.to_f
            puts "digite o segundo valor: "
            second_value = gets.chomp.to_f

            puts "A Subtração entre #{first_value} e #{second_value} é igual a #{first_value - second_value}"  
            puts line_decoration

        when "3"
            puts "Você escolheu Multiplicação"
            puts "digite o primeiro valor: "
            first_value = gets.chomp.to_f
            puts "digite o segundo valor: "
            second_value = gets.chomp.to_f

            puts "O Produto entre #{first_value} e #{second_value} é igual a #{first_value * second_value}"
            puts line_decoration

        when "4"
            puts "Você escolheu Divisão"
            puts "digite o primeiro valor: "
            first_value = gets.chomp.to_f
            puts "digite o segundo valor: "
            second_value = gets.chomp.to_f

            if second_value != 0
                puts "O Quociente entre #{first_value} e #{second_value} é igual a #{first_value / second_value}"
            else
                puts "Divisão por zero não é permitida."    

            puts line_decoration    
            end
            
        when "0"
            puts "Você escolheu Sair"
            return
        else
            puts "Digite uma opcão válida"
            puts line_decoration
        end 
    end

    puts "Deseja realizar uma nova operação? (S/N)"
    puts line_decoration
    repeat = gets.chomp.downcase 
    break if repeat == "n"
end     