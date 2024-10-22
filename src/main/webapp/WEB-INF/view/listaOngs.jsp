<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de ONGs</title>
</head>
<body>
    <div class="container">
        <h1>Lista de ONGs Cadastradas</h1>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Endereço</th>
                    <th>Contato</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ong" items="${ongs}">
                    <tr>
                        <td>${ong.id}</td>
                        <td>${ong.nome}</td>
                        <td>${ong.endereco}</td>
                        <td>${ong.contato}</td>
                        <td>
                            <!-- Aqui você pode adicionar ações como editar, deletar -->
                            <a href="/ong/editar/${ong.id}" class="btn btn-warning">Editar</a>
                            <a href="/ong/deletar/${ong.id}" class="btn btn-danger" onclick="return confirm('Deseja excluir esta ONG?');">Deletar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="/ong/cadastrar" class="btn btn-primary">Cadastrar Nova ONG</a>
    </div>
</body>
</html>
