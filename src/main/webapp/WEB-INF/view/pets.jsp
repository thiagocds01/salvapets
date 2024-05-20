<!DOCTYPE html>
<html>
<head>
    <title>Lista de Pets</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 16px;
            padding: 16px;
        }

        .pet-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 16px;
            text-align: center;
        }

        .pet-card img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
        }

        .pet-card button {
            margin-top: 8px;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .pet-card button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Lista de Pets</h2>
    <a href="/pet/cadastrar">
        <button type="button">Cadastrar Novo Pet</button>
    </a>
    <a href="/pet/pets"><br>
        <button type="button">Listar</button>
    </a>
    <div class="container">
        <c:forEach var="pet" items="${pets}">
            <div class="pet-card">
                <img src="data:image/png;base64,${pet.imagem}" alt="Imagem do Pet" />
                <h3>${pet.nome}</h3>
                <p>Raça: ${pet.raca}</p>
                <p>Idade: ${pet.idade} anos</p>
                <a href="/pet/${pet.id}">
                    <button type="button">Editar</button>
                </a>
                <form action="/pet/${pet.id}/delete" method="post" style="display:inline;">
                    <button type="submit">Deletar</button>
                </form>
            </div>
        </c:forEach>
    </div>
</body>
</html>
