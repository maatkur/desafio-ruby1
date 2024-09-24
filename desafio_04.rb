# Este programa valida o CPF digitado pelo usuário.

require 'cpf_cnpj'

# Função que valida o CPF

def is_cpf_valid(cpf)
  if CPF.valid?(cpf)
    puts("🟢 -- O CPF digitado é válido!")
  else
    puts("❌ -- O CPF digitado é inválido!")
  end
end

cpf_to_validate = false

# Na documentação do CPF_CNPJ, a função CPF.valid? leva em consideração apenas o número do CPF, mesmo que ele seja digitado
# com pontos e traços e outros caracteres. Mas por boas práticas e experiencia do usuário, é melhor pedir para que ele digite
# somente os números do CPF.

while ! cpf_to_validate
  puts "Digite o CPF para validação: "
  cpf = gets.chomp()

  if ! cpf.match?(/^\d+$/)
    puts "Digite apenas números!"
  elsif cpf.length != 11
    puts "O CPF deve ter 11 dígitos!"
  else
    is_cpf_valid(cpf)
    cpf_to_validate = true
  end
end
