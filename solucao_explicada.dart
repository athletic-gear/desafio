void main() {
  List<String> listasenhas = [
    '#forTe1',
    'senhafraca',
    'Qu@s1',
    'Voce@Consegue!2023'
  ]; //lista de senhas.

  for (String senha
      in listasenhas) //loop for para percorrer todas as senhas da lista
  {
    if (aSenhaForte(senha)) //inicia a função para verificar se a senha é forte
    {
      print(senha); //imprime as senhas que atendeu aos requisitos da função
    }
  }
}

bool aSenhaForte(String senha) //função de verificação
{
  if (senha.length >= 7 &&
      senha.contains(new RegExp(r'[A-Z]')) &&
      senha.contains(new RegExp(r'[a-z]')) &&
      senha.contains(new RegExp(r'[0-9]')) &&
      senha.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return true; //se atender a todos os requisitos, retorna verdadeiro
  } else {
    return false; // caso um dos requisitos não seja atendido, retorna falso
  }
}
