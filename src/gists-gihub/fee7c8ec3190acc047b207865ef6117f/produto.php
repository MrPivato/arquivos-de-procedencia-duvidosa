<?php
$cabecalho_title = "Produto da Mirror Fashion";
$cabecalho_css = '<link rel="stylesheet" href="css/produto.css">';
include("cabecalho.inc.php");
?>
<?php
        // new mysqli('string servidor', 'string usu?rio', 'string senha', 'string banco_de_dados');
        $mysqli = new mysqli("localhost", "root", "", "mirrorfashion");
        $resultado = $mysqli->query("SELECT * FROM produto WHERE id = {$_GET['id']}");
        $linhas = $resultado->num_rows;

        for ($i = 0; $i < $linhas; $i++) {

                $registro = $resultado->fetch_array();

                $nome = $registro["nome"];
                $cor = $registro["cor"];
                $preco = $registro["preco"];
                $tamanho = $registro["tamanho"];
                $modelo = $registro["modelo"];
                $material = $registro["material"];
                $lavagem = $registro["lavagem"];
                $detalhes = $registro["detalhes"];
                $imagem = $registro["imagem"];

        }

        $cor = explode(" | ",$cor);

        $resultado->free();
        $mysqli->close();
?>

<!-- envolvendo a div produto pela nova div -->
<div class="produto-back">
    <div class="container">
        <div class="produto">
            <h1>Fuzzy Cardigan</h1>
            <p>por apenas R$ <?php echo $preco; ?> </p>
            <form action="checkout.php" method="POST">
                <input type="hidden" name="nome" value="Fuzzy Cardigan">
                <input type="hidden" name="id" value="1">
                <fieldset class="cores">
                    <legend>Escolha a cor:</legend>
                    <input type="radio" name="cor" value="verde" id="verde" checked>
                    <label for="verde">
                        <?php echo '<img src="img/produtos/foto1-' . $cor[2] . '.png">' ?> 
                    </label>
                    <input type="radio" name="cor" value="rosa" id="rosa">
                    <label for="rosa">
                        <?php echo '<img src="img/produtos/foto1-' . $cor[1] . '.png">' ?> 
                    </label>
                    <input type="radio" name="cor" value="azul" id="azul">
                    <label for="azul">
                        <?php echo '<img src="img/produtos/foto1-' . $cor[0] . '.png">' ?> 
                    </label>
                </fieldset>
                <fieldset class="tamanhos">
                    <legend>Escolha o tamanho:</legend>
                    <?php
                    $tamanhos=explode("|",$tamanho);
                    $min=$tamanhos[0];
                    $max=$tamanhos[sizeof($tamanhos)-1];
                    echo "<input type='range' min=$min max=$max value=$min step='2' name='tamanho' id='tamanho'>";
                    ?>
                </fieldset>
                <input type="submit" class="comprar" value="Comprar">
            </form>
        </div>
        <div class="detalhes">
            <h2>Detalhes do produto</h2>
                <?php echo $detalhes; ?>
            <table>
                <thead>
                    <tr>
                        <th>Característica</th>
                        <th>Detalhe</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Modelo</td>
                        <td><?php echo $modelo; ?></td>
                    </tr>
                    <tr>
                        <td>Material</td>
                        <td><?php echo $material; ?></td>
                    </tr>
                    <tr>
                        <td>Cores</td>
                        <?php $cor = implode(", ",$cor);?>
                        <td><?php echo $cor; ?></td>
                    </tr>
                    <tr>
                        <td>Lavagem</td>
                        <td><?php echo $lavagem; ?></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>
<?php include("rodape.inc.php"); ?>

</body>
</html>