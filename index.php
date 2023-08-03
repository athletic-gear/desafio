<?php
include 'gerador_senha.php'; // Inclusão do arquivo gerador_senha.php
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerador de Senhas</title>
    <link rel="stylesheet"  type="text/css" href="css/style.css">
</head>
<body>
<div class="container">
        <h1>Gerador de Senhas</h1>
        <form method="post">
            <div class="passwords">
                <div class="password gerador">
                    <span>Senhas Geradas:</span>
                    <div id="generatedPasswords">
                        <?php
                        foreach ($SENHAS as $senha) {
                            echo "<p>" . $senha . "</p>";
                        }
                        ?>
                    </div>
                </div>
                <div class="password senha_forte">
                    <span>Senhas Fortes:</span>
                    <div id="strongPasswords">
                        <?php
                        foreach ($SENHAS as $senha) {
                            if (verificador_senha_forte($senha)) {
                                echo "<p>" . $senha . "</p>";
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
            <button type="submit" id="refreshButton">Gerar Novas Senhas</button>
        </form>
    </div>
    <script>
        // Script JavaScript para atualizar as senhas e o botão de refresh
        document.getElementById("refreshButton").addEventListener("click", function() {
            location.reload();
        });
    </script>
</body>
</html>











