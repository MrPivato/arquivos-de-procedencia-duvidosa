<!DOCTYPE html>
<html>
	<head>
		<title>IFRS BG</title>
		<?php require_once 'inc/site_skin.inc'; ?>
	</head>
	<body>

		<header>
			<!-- Dps fazer com include -->
			<h1>Carrinho de compras do IFRS.</h1>
			<div class="menu">

				<a href="produtos.php">Voltar ao site</a>

			</div>
		</header>

		<br clear="all">

		<form method="POST" action="finalizarcompra.php">
			<table border="0">
                <?php

                    //Inicia a sessão
                    session_start();

                    //verifica se o carrinho de compras está vazio
                    if (empty($_SESSION['carrinho'])) {
                        //cria um carrinho de compras vazio
                        $_SESSION['carrinho'] = [];
                    }else{
                        
                        // Abre o Arquivo no Modo r (para leitura)
                        $arquivo = fopen('produtos.txt', 'r');
                        // Lê o conteúdo do arquivo 
                        while (!feof($arquivo)) {
                            //Mostra uma linha do arquivo
                            $linha = fgets($arquivo, 1024);
                            //separa os conteúdos desta linha (pelo caractere |) e coloca em um vetor
                            $produto = explode("|", $linha);
                            //Verifica pelo id se o produto já está no carrinho de compras
                            if (!in_array($produto[0], $_SESSION['carrinho'])) {
                                //Adiciona o produto com toda sua descrição no carrinho de compras
                                //array_push($_SESSION['carrinho'], $produto);
                            }

                        }
                        // Fecha arquivo aberto
                        fclose($arquivo);
                    }

					foreach ($_SESSION['carrinho'] as $key => $value) {
// array("id" => $id, "nome" => $produto[2], "descricao" => $produto[3], "preco" => floatval($produto[4]), "imagem" => $produto[1], "tamanho" => "", "quantidade" => 1, "subtotal" => floatval($produto[4]));
						echo "
								<tr>
									<td>
										<figure>
											<img name='imagem' src='{$value['imagem']}' >
											<figcaption name='produto'>{$value['nome']}</figcaption>
										</figure>
									</td>
									<td><p>{$value['descricao']}</p></td>
									<td><p>Preço: {$value['preco']} Reais</p></td>
									<td>
										Tamanho: <select>
											<option value='pp'>PP</option>
											<option value='p'>P</option>
											<option value='m'>M</option>
											<option value='g'>G</option>
											<option value='gg'>GG</option>
										</select><br>
											
										Quantidade: <input type='number' name='quant	'>
											
									</td>
								</tr>
							";	
					}
					$precoTotal = 0;
					foreach ($_SESSION['carrinho'] as $key => $value) {
						$precoTotal += $value['preco'];
						
					}
					
					
					
                    echo"<pre>";
						var_dump($_SESSION['carrinho']);    
                    echo"</pre>";
					
					echo "<tr><td><h1>Preço Total é: " . $precoTotal . " Reais</td></tr>";
                ?>
			</table>
            <input type="submit" value="Finalizar Compra" name="submit">
                
            </form>

	</body>
</html> 