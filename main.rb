user_info = {}
line_decoration = "======================================================================================================="

puts line_decoration
puts "Bem vindo(a) à biblioteca do conhecimento Ruby!"
puts line_decoration

print "Para continuar, por favor digite seu nome: "
user_info[:name] = gets.chomp    

puts line_decoration
print "Agora por favor, digite seu sobrenome: "
user_info[:last_name] = gets.chomp
puts line_decoration

puts "A última informação para concluir seu cadastro.."
print "Por favor, digite sua idade: "
user_info[:age] = gets.chomp
puts "Cadastro concluido!"
puts line_decoration

puts "Olá #{user_info[:name]} #{user_info[:last_name]}, é um prazer ter você aqui! De acordo com sua idade, #{user_info[:age]} anos, deixamos alguns títulos pré selecionados em sua página inicial!"