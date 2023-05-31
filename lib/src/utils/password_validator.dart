//Pesquisas:
//  How to use Regex Dart: https://stackoverflow.com/questions/49757486/how-to-use-regex-in-dart
//  Upper/Lower Case Pattern: https://stackoverflow.com/questions/1559751/regex-to-make-sure-that-the-string-contains-at-least-one-lower-case-char-upper
//  Charactere Especial Pattern: https://stackoverflow.com/questions/5142103/regex-to-validate-password-strength
//  Ferramenta de teste: https://rubular.com/r/UAwoaPM0Ji

bool isValidPassword(String password) {
  var uppercaseRegex = RegExp(r'.*[A-Z].*');
  var lowercaseRegex = RegExp(r'.*[a-z].*');
  var numberRegex = RegExp(r'.*[0-9].*');
  var specialCharRegex = RegExp(r'.*[!@#$&*-].*');

  // MinLenght Validator
  if (password.length < 7) {
    return false;
  }

  bool isValid = uppercaseRegex.hasMatch(password) &&
      lowercaseRegex.hasMatch(password) &&
      numberRegex.hasMatch(password) &&
      specialCharRegex.hasMatch(password);

  return isValid;
}

List<String> validateMultiplePasswords(String arrayPasswords) {
  List<String> passwordList = arrayPasswords.split('\n');
  List<String> validPasswords = [];

  for (String password in passwordList) {
    if (isValidPassword(password)) {
      validPasswords.add(password);
    }
  }

  return validPasswords;
}
