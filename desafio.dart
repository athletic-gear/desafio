bool upLowSpecial(String aux) {
  RegExp upper = RegExp(r'[A-Z]');
  RegExp lower = RegExp(r'[a-z]');
  var teste1 = false, teste2 = false, teste3 = false;

  for (var i = 0; i < aux.length; i++) {
    /*verifica cada caractere para identificar se ele é
    um lowercase*/
    if (lower.hasMatch(aux[i])) {
      teste1 = true;

      /*verifica se ele é um lowercase*/
    } else if (upper.hasMatch(aux[i])) {
      teste3 = true;
    }
    /* Caso algum caracter não se encontre nos casos acima, ele colocará
    o valor true no teste 3, o que significa que há um caracter especial ou
    numérico, caso haja apenas caracteres alfabéticos, a lógica não cairá
    no else o que acarretará num retorno False pra função*/
    else {
      teste2 = true;
    }
  }
  return (teste1 && teste2 && teste3);
}

void main() {
  var passwords = const [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023',
  ];
  List<String> out = [];
  int len = passwords.length;

  for (var i = 0; i < len; i++) {
    var aux = passwords[i];

    if (aux.length >= 7) {
      if (upLowSpecial(aux) == true) {
        out.add(aux);
      }
    }
  }

  for (String passC in out) {
    print(passC);
  }
}
