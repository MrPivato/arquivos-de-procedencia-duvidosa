<?php 
        $cabecalho_title = "Home da Mirror Fashion";
        include("cabecalho.inc.php"); 
        ?>
        <div class="container destaque">
            <section class="busca">
                <h2>Busca</h2>
                <form>
                    <input type="search">
                    <input type="image" src="img/busca.png">
                </form>
            </section><!-- fim .busca -->
            <section class="menu-departamentos">
                <h2>Departamentos</h2>
                <nav>
                    <ul>
                        <li>
                            <a href="#">Blusas e Camisas</a>
                            <ul>
                                <li><a href="#">Manga curta</a></li>
                                <li><a href="#">Manga comprida</a></li>
                                <li><a href="#">Camisa social</a></li>
                                <li><a href="#">Camisa casual</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Calças</a></li>
                        <li><a href="#">Saias</a></li>
                        <li><a href="#">Vestidos</a></li>
                        <li><a href="#">Sapatos</a></li>
                        <li><a href="#">Bolsas e Carteiras</a></li>
                        <li><a href="#">Acessórios</a></li>
                    </ul>
                </nav>
            </section><!-- fim .menu-departamentos -->
            <img src="img/destaque-home.png" alt="Promoção: Big City Night">
        </div>
        <!-- fim .container .destaque -->
<?php
        $c = 1;
        // new mysqli('string servidor', 'string usu?rio', 'string senha', 'string banco_de_dados');
        $mysqli = new mysqli("localhost", "root", "", "mirrorfashion");
        $resultado = $mysqli->query("SELECT * FROM produto");
        $linhas = $resultado->num_rows;
        echo ' <div class="container paineis"><section class="painel novidades"><ol>';
        for ($i = 0; $i < $linhas; $i++, $c++) {

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

                echo "
                        <li>
                            <a href='produto.php?id={$c}'>
                                <figure>
                                    <img src='img/produtos/{$imagem}' >
                                    <figcaption>{$nome} Rs {$preco}</figcaption>
                                </figure>
                            </a>
                        </li>
                 
                ";
        }
        echo '</ol></div></section>';
        $resultado->free();
        $mysqli->close();
?>
<br clear="all">
        <div class="container paineis">
            <section class="painel novidades">
                <h2>Novidades</h2>
                <ol>
                    <li>
                        <a href="produto.php?id=1">
                            <figure>
                                <img src="img/produtos/miniatura1.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php?id=2">
                            <figure>
                                <img src="img/produtos/miniatura2.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php?id=3">
                            <figure>
                                <img src="img/produtos/miniatura3.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php?id=4">
                            <figure>
                                <img src="img/produtos/miniatura4.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php?id=5">
                            <figure>
                                <img src="img/produtos/miniatura5.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php?id=6">
                            <figure>
                                <img src="img/produtos/miniatura6.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>                    
                </ol>                
                <!--fim do painel novidades-->
            </section>

            <section class="painel mais-vendidos">
                <h2>Mais Vendidos</h2>
                <ol>
                    <li>
                        <a href="produto.php">
                            <figure>
                                <img src="img/produtos/miniatura7.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php">
                            <figure>
                                <img src="img/produtos/miniatura8.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php">
                            <figure>
                                <img src="img/produtos/miniatura9.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php">
                            <figure>
                                <img src="img/produtos/miniatura10.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php">
                            <figure>
                                <img src="img/produtos/miniatura11.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li>
                        <a href="produto.php">
                            <figure>
                                <img src="img/produtos/miniatura12.png" >
                                <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                            </figure>
                        </a>
                    </li>
                </ol>
            </section>
            <!--fim do painel mais-vendidos-->
        </div>

        <?php include("rodape.inc.php"); ?>
    </body>

</html>