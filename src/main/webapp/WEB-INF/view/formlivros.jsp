<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de livros</title>
</head>
<body>
	<h2>Cadastro de livros:</h2>
	<form action=/biblioteca/cadastrar method=POST>
			Nome: <input type="text" value="" name="nome"/><br>
			Ra�a: <input type="text" value="" name="raca"/><br>
			Porte da Ra�a: <input type="text" value="" name="porteRaca"/><br><br>
			Sexo: <input type="text" value="" name="sexo"/><br><br>
			Cor: <input type="text" value="" name="cor"/><br><br>
			Idade: <input type="text" value="" name="idade"/><br><br>
			Historia: <input type="text" value="" name="historia"/><br><br>
			Imagem: <input type="file" value="" name="imagem"/><br><br>
	<button type="submit">Cadastrar</button>
	
	</form>
</body>
</html>