<?php

function gerador_senha_forte() {
    // Caracteres que podem ser usados na senha
    $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@$!%*?&';
    $password_length = 10; // Tamanho da senha
    $password = '';

    // Gera a senha aleatoriamente
    for ($i = 0; $i < $password_length; $i++) {
        $random_index = random_int(0, strlen($chars) - 1);
        $password .= $chars[$random_index];
    }

    return $password;
}

function verificador_senha_forte($password) {
    // Verifica se a senha atende aos critérios de ser forte
    return preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{7,}$/', $password);
}

// Gerar um array de senhas aleatórias
$SENHAS = array();
for ($i = 0; $i < 10; $i++) {
    $password = gerador_senha_forte(); 
    array_push($SENHAS, $password);
}
?>
