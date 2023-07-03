void main(List<String> arguments) {
  List<String> listasenhas = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023'
  ];

  if (arguments.isNotEmpty && aSenhaForte(arguments[0])) {
    print("A senha $arguments é segura");
  } else if (arguments.isEmpty) {
    for (String senha in listasenhas) {
      if (aSenhaForte(senha)) {
        print(senha);
      }
    }
    print(
        "\nPara verificar sua senha, execute \npassando sua senha como parâmetro:\nEx: dart solucao.dart Ess@Senh4");
  } else {
    print("A senha $arguments é fraca");
  }
}

bool aSenhaForte(String senha) {
  if (senha.length >= 7 &&
      senha.contains(RegExp(r'[A-Z]')) &&
      senha.contains(RegExp(r'[a-z]')) &&
      senha.contains(RegExp(r'[0-9]')) &&
      senha.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return true;
  } else {
    return false;
  }
}
