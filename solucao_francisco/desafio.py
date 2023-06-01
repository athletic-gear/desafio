import string


CARACTERES_ESPECIAIS = string.punctuation
SENHAS = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2023"]

def maiuscula(palavra: str) -> bool:
    for letra in palavra:
        if letra.isupper():
            return True
    return False

def minuscula(palavra: str) -> bool:
    for letra in palavra:
        if letra.islower():
            return True
    return False

def caracteres_especiais(palavra: str) -> bool:
    for letra in palavra:
        if letra in CARACTERES_ESPECIAIS:
            return True
    return False

def numero(palavra: str) -> bool:
    for letra in palavra:
        if letra.isdigit():
            return True
    return False

def senhas_fortes(senhas: list) -> list:
    fortes = []
    for senha in senhas:
        if len(senha) >= 7 and minuscula(senha) and maiuscula(senha) and caracteres_especiais(senha) and numero(senha):
            fortes.append(senha)
    return fortes

for senha_forte in senhas_fortes(SENHAS):
    print(senha_forte)
        