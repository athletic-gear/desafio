#biblioteca re para expressões regulares
import re

def password_verify(passwords):
    #expressão regular para verificar se a senha tem caracteres especiais
    characters = re.compile(r'[!@#$%^&*(),.?":{}|<>]')
    valid_passwords = []
    #loop para verificar cada senha da lista
    for password in passwords:
        if len(password) >= 7 and any(c.isupper() for c in password) and any(c.islower() for c in password) and re.search(characters, password):
            valid_passwords.append(password)
    return valid_passwords
    

passwords = ['#forTe1', 'senhafraca', 'Qu@s1', 'Voce@Consegue!2023']

valid_passwords = password_verify(passwords)
print(valid_passwords)