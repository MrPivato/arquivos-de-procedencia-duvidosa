<?php

/*
 * CONTINUAR
 * FAZER BD
 *  
 */

// new mysqli('string servidor', 'string usuário', 'string senha', 'string banco_de_dados');
$mysqli = new mysqli("localhost", "aluno", "aluno", "aluno_alunosifrs");
$resultado = $mysqli->query("SELECT * FROM alunos");
$linhas = $resultado->num_rows;

$sql = "INSERT INTO alunos VALUES (id = 3, nome = 'aaaaa', cpf = 12345678901234, rg = 1234567890, 
    sexo = 'f', sigla_cidade = 'aaa', endereco = 'asdas', email = 'aaaa', recebe_news = 0 );";
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
