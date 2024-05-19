<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Pets</title>
</head>
<body>
    <h2>Cadastrar Pets</h2>
    <form action="/pet/cadastrar" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome"><br>

        <label for="raca">Raça:</label>
        <input type="text" id="raca" name="raca"><br>

        <label for="idade">Idade:</label>
        <input type="number" id="idade" name="idade"><br>

        <label for="imagem">Imagem (Base64):</label>
        <textarea id="imagem" name="imagem"></textarea><br>

        <button type="submit">Cadastrar</button>
    </form>
    <a href="/pet"><button type="submit"> Voltar</button</a>
</body>
</html>
