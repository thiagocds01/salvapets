<!DOCTYPE html>
<html>
<head>
    <title>Lista de Pets</title>
</head>
<body>
    <h2>Lista de Pets</h2>
    <a href="/pet/cadastrar">
        <button type="submit">Cadastrar Novo Pet</button>
    </a>
    <a href="/pet"><br>
        <button type="submit">Listar</button>
    </a>
    <table border="1">
        <tr>
            <th>Nome</th>
            <th>Raça</th>
            <th>Idade</th>
            <th>Imagem</th>
            <th>Ações</th>
        </tr>
        <c:forEach var="listaPets" items="${pet}">
            <tr>
                <td>${pet.nome}</td>
                <td>${pet.raca}</td>
                <td>${pet.idade}</td>
                <td>
                    <img border="0" alt="Imagem do Pet"
                         src="data:image/png;base64,${pet.imagem}"
                         width="100" height="100" />
                </td>
                <td>
                    <a href="/pet/${pet.id}"><button type="submit">Editar</button></a>
                    <form action="/pet/${pet.id}/delete" method="post" style="display:inline;">
                        <button type="submit">Deletar</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
