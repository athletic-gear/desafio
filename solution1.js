const senhas = [
    'senhafraca',
    'SenhaMaiuscula',
    'senhamaiuscula',
    'Senha123',
    'SenhaFort3#',
    'OutraSenhaFraca',
    'OutraSenha123',
    'UmaSenhaMaiuscula',
    'Senha123456',
    'SenhaSegura#',
    'SenhacomNumeros123',
    'SenhaCOMsimbolos@'
  ];
  
  function isSenhaForte(senha) {
    return senha.length >= 10 && /[a-z]/.test(senha) && /[A-Z]/.test(senha);
  }
  
  senhas.forEach((senha) => {
    if (isSenhaForte(senha)) {
      console.log(senha);
    }
  });