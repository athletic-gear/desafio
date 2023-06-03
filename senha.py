## lista
senha_array = ['#forTe1','senhafraca','Qu@s1','Voce@Consegue!2023']

## verificador
senhas_fortes = [senha for senha in senha_array if any(c.isupper() for c in senha) and any(c.islower() for c in senha) and len(senha) >= 7 and any(not senha.isalnum() for senha in senha_array)]

print('Senhas fortes:', senhas_fortes)
