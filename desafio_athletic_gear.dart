main() {
  const List<String> arrayPassword = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023',
    'daniel',
    'bailey',
    'welcome',
    'buster',
    'Passw0rd',
    'baseball',
    'shadow',
    '121212',
    'hannah',
    'monkey',
    'Thomas968#',
    'summer85_@',
    'george',
    'harley',
    'Jessica123@',
    'ginger=%',
    'michelle23',
  ];
  
  isStrongPassword(String senha) {
    // RegExp
    var exp = RegExp(r'^(?=.*[@!#$%^&*()/\\])(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])');
    //Verifier matches and print
    if (exp.hasMatch(senha) && senha.length >= 7) {
      print(senha);
    }
  }

  arrayPassword.forEach((senha) => isStrongPassword(senha));
}
