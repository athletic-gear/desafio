#biblioteca re para expressões regulares
import re

def password_verify(passwords):
    #contador para verificar se a senha é forte ou fraca
    count = 0
    #expressão regular para verificar se a senha tem caracteres especiais
    characters = re.compile(r'[!@#$%^&*(),.?":{}|<>]')
    #loop para verificar cada senha da lista
    for password in passwords:
        print(password)
        #verifica se a senha tem pelo menos 7 caracteres
        if len(password) >= 7:
            count += 1
            print(f"OK - >= 7 caracteres ({len(password)})")
        else:
            print(f"ERRO - < 7 caracteres ({len(password)})")
        #verifica se a senha tem pelo menos uma letra maiúscula
        if any(c.isupper() for c in password):
            count += 1
            upper = [l for l in password if l.isupper()]
            print(f"OK - tem maiuscula ({''.join(upper)})")
        else:
            print(f"ERRO - nao tem maiuscula")
        #verifica se a senha tem pelo menos uma letra minúscula
        if any(c.islower() for c in password):
            count += 1
            lower = [l for l in password if l.islower()]
            print(f"OK - tem minúscula ({''.join(lower)})")
        else:
            print(f"ERRO - nao tem maiuscula")
        #verifica se a senha tem pelo menos um caracter especial
        if re.search(characters, password):
            count += 1
            character = re.findall(characters, password)
            print(f"OK - tem caracter especial ({''.join(character)})")
        else:
            print(f"ERRO - nao tem caracter especial")
        #verifica se a senha é forte ou fraca
        if count == 4:
            count = 0
            print("Senha forte")
        else:
            count = 0
            print("Senha fraca")

passwords = ['abCd@fghi', 'Abcdef', 'ABcdefg!']

password_verify(passwords)