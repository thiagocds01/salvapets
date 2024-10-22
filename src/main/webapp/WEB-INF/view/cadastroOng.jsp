<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<form action="/pet/ong/cadastrar" method="post">
    <div class="form-group">
        <label for="nome">Nome da ONG:</label>
        <input type="text" class="form-control" id="nome" name="nome" required>
    </div>

    <div class="form-group">
        <label for="endereco">Endereço:</label>
        <input type="text" class="form-control" id="endereco" name="endereco" required>
    </div>

    <div class="form-group">
        <label for="contato">Contato:</label>
        <input type="text" class="form-control" id="contato" name="contato" required>
    </div>

    <button type="submit" class="btn btn-primary">Cadastrar ONG</button>
</form>

</body>
</html>