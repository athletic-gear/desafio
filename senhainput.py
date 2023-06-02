## lista
senha_array = []

## obtendo a senha digitada pelo usuario
senha_input = input('Insira uma senha: ')

## inserindo a senha no array
senha_array.append(senha_input)

## verificador
if any(senha.isupper() for senha in senha_input) and any(senha.islower() for senha in senha_input) and len(senha_input) >= 7 and any(not senha.isalnum() for senha in senha_input):
    print('Senha forte' + str(senha_array))
else:
    print('Senha fraca' + str(senha_array) + '\n Para se obter uma senha forte ela deve ter: \n No mínimo 7 caracteres \n Pelo menos uma letra maiúscula \n Pelo menos uma letra minúscula \n Pelo menos um caractere especial')

