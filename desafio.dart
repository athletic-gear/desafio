void main() {
  List<String> passwords = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023',
  ];

  print(verifyStrongPassword(passwords));
}

List<String> verifyStrongPassword(List<String> charList) {
  final regex = RegExp(r'[0-9]');
  List<String> result = [];

  for (String pss in charList) {
    if (pss.length < 7) {
      continue;
    }

    bool isStrong = pss.split('').any((char) {
      return char.contains(char.toUpperCase()) &&
          char.contains(char.toLowerCase()) &&
          regex.hasMatch(char);
    });

    if (isStrong) {
      result.add(pss);
    }
  }

  return result;
}