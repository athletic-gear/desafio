<?php
// FEITO POR GABRIEL SIRIANI - 29/05/2023 - Desafio Athletic Gear
// CONTATO: gabrielsiriani19@gmail.com
// Portofólio: https://gabrielsiriani.com/

// Array de senhas com valores pré-definidos

$passwords = array('123456', '!SenhaFort3', '!senhaa', '@athletic1A', '1234567', '!@345', '!@34567Aa');

function validarSenha($senha)
{

    // Testa Mínimo de caracteres.
    $MinChar = preg_match("/.{6,}/", $senha);
    // Testa Mínimo de uma Letra Maiúscula
    $contemMaiuscula = preg_match("/[A-Z]{1,}/", $senha);
    // Testa Mínimo de uma Letra Minuscula
    $contemMinuscula = preg_match("/[a-z]{1,}/", $senha);
    // Testa se contem um número inteiro positivo
    $contemNumero = preg_match("/[0-9]{1,}/", $senha);
    // Teste se contem um caractere especial
    $contemEspecial = preg_match("/\W|_/", $senha);

    if ($MinChar && $contemMaiuscula && $contemMinuscula && $contemNumero && $contemEspecial) {
        echo "<p style='font-weight: bold;'>Senha FORTE: $senha</p>";
    } else {
        echo "<p>Senha Fraca: $senha</p>";
    }

}

foreach ($passwords as $senha) {
    validarSenha($senha);
}


// if (isset($_POST['botaoAdicionar'])) {
//     $novaSenha = $_POST["inputSenha"];
//     array_push($passwords, $novaSenha);

//     validarSenha($novaSenha);
// } 



// Consultas:
// https://www.w3schools.com/php/func_regex_preg_match.asp
// https://www.w3schools.com/php/php_arrays.asp
// https://www.w3schools.com/php/php_looping_foreach.asp
// https://www.geeksforgeeks.org/how-to-call-php-function-on-the-click-of-a-button/
?>