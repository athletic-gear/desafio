<!-- FEITO POR GABRIEL SIRIANI - 29/05/2023 - Desafio Athletic Gear
CONTATO: gabrielsiriani19@gmail.com
Portofólio: https://gabrielsiriani.com/ -->

<?php
include("main.php")
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Desafio Athletic Gear - Gabriel Siriani</title>
</head>

<style>
    * {
        font-family: 'Franklin', sans-serif;
    }

    body {
        background-color: #f3f3f3;
    }

    h1,
    h2 {
        color: #332d2d;
    }

    h2,
    li {
        font-style: oblique;
    }
</style>

<body>
    <h1>Desafio Athletic Gear - Gabriel Siriani</h1>


    <!-- Input para novas senhas
    <form id="input">
        <h1>Adicionar Novas Senhas</h1>
        <input type="text" id="inputSenha" name="inputSenha" required>
        <input type="button" id="botaoAdicionar" name="botaoAdicionar" value="Adicionar">
    </form> -->

    <div id="condicoes">
        <h2>Condições Senha Fortes:</h2>
        <ul>
            <li>no mínimo 7 caracteres</li>
            <li>pelo menos uma letra maiúscula</li>
            <li>pelo menos uma letra minúscula</li>
            <li>pelo menos um número</li>
            <li>conter caractere especial</li>
        </ul>
    </div>

</body>

</html>