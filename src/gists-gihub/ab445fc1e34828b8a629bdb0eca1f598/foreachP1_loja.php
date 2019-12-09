foreach ($_SESSION['carrinho'] as $key => $value) {
	var_dump($key);
	echo '<hr>';
	var_dump($value);
	echo '<hr>';
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