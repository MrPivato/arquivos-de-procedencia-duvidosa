<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        // new mysqli('string servidor', 'string usuário', 'string senha', 'string banco_de_dados');
        $mysqli = new mysqli("localhost", "aluno", "aluno", "aluno_alunosifrs");
        $resultado = $mysqli->query("SELECT * FROM alunos");
        $linhas = $resultado->num_rows;
        for ($i = 0; $i < $linhas; $i++) {
            $registro = $resultado->fetch_array();
            $nome = $registro["nome"];
            $sexo = $registro["sexo"];
            echo "Nome do usuário: $nome <br>";
            echo "Sexo: $sexo <hr>";
        }
        $resultado->free();
        $mysqli->close();
        ?>
    </body>
</html>
