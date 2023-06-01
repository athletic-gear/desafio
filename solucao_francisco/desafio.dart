
void main() {
  
  List<String> SENHAS = ["#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2023"];

  for(var senha in senhaForte(SENHAS)){
    print(senha);
  }
  
}

bool minuscula(String palavra){
  for(int i = 0; i < palavra.length; i++){
    if (palavra[i].toLowerCase() == palavra[i]){
      return true;
    }
  }
  return false;
}

bool maiuscula(String palavra){
  for(int i = 0; i < palavra.length; i++){
    if (palavra[i].toUpperCase() == palavra[i]){
      return true;
    }
  }
  return false;
}

bool especiais(String palavra){
  RegExp caracteres = RegExp(r'[^\w\s]');
  if (caracteres.hasMatch(palavra)){
    return true;
  }
  return false;
}

bool numero(String palavra){
  RegExp regExp = RegExp(r'\d');
  return regExp.hasMatch(palavra);
}

List<String> senhaForte(List<String> senhas){
  List<String> fortes = [];
  for (var senha in senhas){
    if(senha.length >= 7 && minuscula(senha) && maiuscula(senha) && especiais(senha) && numero(senha)){
      fortes.add(senha);
    }
  }
  return fortes;
}