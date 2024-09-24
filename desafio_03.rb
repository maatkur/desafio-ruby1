text_decorator = "=-" * 20

puts(text_decorator)
puts("Bem-vindo ao desafio da potência!")
puts(text_decorator)
puts("Este programa vai mostrar o resultado de 3 números a sua escolha elevados à potência de 3.")

user_numbers = []

3.times do |i|
  valid_number = false

  while !valid_number
    puts(text_decorator)
    print("Digite o #{i + 1}º número: ")
    number = gets.chomp

    if number.match?(/^\d+$/)
      user_numbers.push(number.to_i)
      valid_number = true
    else
      puts("Digite apenas números!")
    end
  end
end

puts(text_decorator)

user_numbers.each_with_index do |num, index|
  puts("#{num} elevado a 3 é igual a #{num ** 3}...")
end

puts(text_decorator)
puts("Obrigado por participar do desafio da potência!")
