## Desafio Técnico: Athletic Gear

<img src="https://i.imgur.com/bhNuuem.gif" alt="exemplo imagem" width="35%">


### Solução:
  A princípio queria propor uma solução em Dart/Flutter com mecanismos que não sabia implementar, são elas:
 -  **Gerência de Estado:** **Nativa** (ValueNotifier para variáveis e ValueListenebles p/ Widgets), apesar de já ter utilizado esta reatividade em outros contextos, me parecia muito boa para validar campos enquanto eles são digitados;
 -  **Validador de Senhas:** **Regular Expressions**. Como a validação tradicional com condicionais era muito trivial, queria explorar este padrão de texto nesta solução.

>   **Etapa 1 - Reatividade:** Fiz uma campo de formulário tradicional e aprendi a utilizar a reatividade com ValueNofier para formulário, a parte visual ficou assim:



<img src="https://i.imgur.com/50ONvsY.gif" alt="exemplo imagem" width="30%">

>   **Etapa 2 - Array de Senhas:** Fiz um segundo Formulário para receber múltiplas senhas, daqui em diante era só incrementar o algoritmo de validação:


<img src="https://i.imgur.com/QrNKudT.png" alt="exemplo imagem" width="40%">

>   **Etapa 3 - Algorimo de Validação:** Como me propus a solucionar com Regex, pesquisei alguns padrões (fontes em código) e criei um algoritmo simples que retorna um bool:

```
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

  //Pesquisas:
  //  How to use Regex Dart: https://stackoverflow.com/questions/49757486/how-to-use-regex-in-dart
  //  Upper/Lower Case Pattern: https://stackoverflow.com/questions/1559751/regex-to-make-sure-that-the-string-contains-at-least-one-lower-case-char-upper
  //  Charactere Especial Pattern: https://stackoverflow.com/questions/5142103/regex-to-validate-password-strength
  //  Ferramenta de teste: https://rubular.com/r/UAwoaPM0Ji
``` 

>   **Resultado:** Explorei os dois objetos de estudo que me propus e apresentei a solução do primeiro gif da documentação:

<img src="https://i.imgur.com/bhNuuem.gif" alt="exemplo imagem" width="30%">


## 🚀 Run Athletic Gear Solution

Dentro da pasta, digite:

Linux e macOS:

```
flutter run
```

Windows:

```
flutter run
```