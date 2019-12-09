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
        
        $sql = "UPDATE alunos SET nome = 'AAA' WHERE id = 1;";
        $mysqli->query($sql);

        if ($mysqli->query($sql) === TRUE) {
            echo "Foi";
        } else {
            echo "Error: " . $sql . "<br>" . $mysqli->error;
        }

        echo '<hr>';

        for ($i = 0; $i < $linhas; $i++) {
            $registro = $resultado->fetch_array();
            var_dump($registro);
            echo '<hr>';
        }
        $resultado->free();
        $mysqli->close();
        ?>
    </body>
</html>
