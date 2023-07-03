void main(List<String> arguments) {
  List<String> listasenhas = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023'
  ]; //lista de senhas.

  if (arguments.isNotEmpty &&
      aSenhaForte(arguments[0])) // if para verificar se tem argumentos
  //se tiver argumentos ele verifica se a senha passada no argumento é segura
  {
    print(
        "A senha $arguments é segura"); //confirma que a senha do argumento é segura
  } else if (arguments
      .isEmpty) //se não tiver argumentos ele segue para a lista de senhas
  {
    for (String senha
        in listasenhas) //loop for para percorrer todas as senhas da lista
    {
      if (aSenhaForte(
          senha)) //inicia a função para verificar se a senha é forte
      {
        print(senha); //imprime as senhas que atendeu aos requisitos da função
      }
    }
    print(
        "\nPara verificar sua senha, execute \npassando sua senha como parâmetro:\nEx: dart solucao_explicada.dart Ess@Senh4");
    //texto explicando como executar com argumentos
  } else //caso tenha argumentos e a senha são seja segura, esse else é para atender esses requisitos
  {
    print("A senha $arguments é fraca"); //imprime a frase
  }
}

bool aSenhaForte(String senha) //função de verificação
{
  if (senha.length >= 7 &&
      senha.contains(RegExp(r'[A-Z]')) &&
      senha.contains(RegExp(r'[a-z]')) &&
      senha.contains(RegExp(r'[0-9]')) &&
      senha.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return true; //se atender a todos os requisitos, retorna verdadeiro
  } else {
    return false; // caso um dos requisitos não seja atendido, retorna falso
  }
}
