void main() {
  List<String> listasenhas = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023'
  ];

  for (String senha in listasenhas) {
    if (aSenhaForte(senha)) {
      print(senha);
    }
  }
}

bool aSenhaForte(String senha) {
  if (senha.length >= 7 &&
      senha.contains(new RegExp(r'[A-Z]')) &&
      senha.contains(new RegExp(r'[a-z]')) &&
      senha.contains(new RegExp(r'[0-9]')) &&
      senha.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return true;
  } else {
    return false;
  }
}
