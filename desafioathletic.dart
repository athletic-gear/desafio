void main() {
  const List<String> passwords = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023'
  ];

  for (String password in passwords) {
    if (isPasswordStrong(password)) {
      print(password);
    }
  }
}

bool isPasswordStrong(String password) {
  final RegExp uppercaseRegex = RegExp(r'[A-Z]');
  final RegExp lowercaseRegex = RegExp(r'[a-z]');
  final RegExp specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  if (password.length < 7) {
    return false;
  }

  bool hasUppercase = uppercaseRegex.hasMatch(password);
  bool hasLowercase = lowercaseRegex.hasMatch(password);
  bool hasSpecialChar = specialCharRegex.hasMatch(password);

  return hasUppercase && hasLowercase && hasSpecialChar;
}
