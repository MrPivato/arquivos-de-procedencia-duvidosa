<?php 
// new mysqli('string servidor', 'string usu?rio', 'string senha', 'string banco_de_dados');
$mysqli = new mysqli("localhost", "root", "", "mirrorfashion");

$id = $_GET["id"];
$nome = $_GET["nome"];
$cor = $_GET["cor"];
$preco = $_GET["preco"];
$tamanho = $_GET["tamanho"];
$modelo = $_GET["modelo"];
$material = $_GET["material"];
$lavagem = $_GET["lavagem"];
$detalhes = $_GET["detalhes"];
$imagem = $_GET["imagem"];

$insert = "INSERT INTO produto VALUES (";
$insert .= $id . ", ";
$insert .= '"' . $nome . "\", ";
$insert .= '"' . $cor . "\", ";
$insert .= $preco . ", ";
$insert .= '"' . $tamanho . "\", ";
$insert .= '"' . $modelo . "\", ";
$insert .= '"' . $material . "\", ";
$insert .= '"' . $lavagem . "\", ";
$insert .= '"' . $detalhes . "\", ";
$insert .= '"' . $imagem . "\"";
$insert .= ");";

var_dump($insert);
$resultado = $mysqli->query($insert);

$resultado->free();
$mysqli->close();

?>
