<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>

    <title>Lista de Pets</title>

    <img src="<c:url value='/resources/img/Logomarca.png'/>"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">


</head>
<body>
    <h2>Lista de Pets</h2>
    <a href="/pet/cadastrar">
        <button class="pet-button-cadastro" type="button" style="
             margin-top: 8px;
             padding: 8px 16px;
             background-color: #3CA6A6;
             color: white;
             border: none;
             border-radius: 4px;
             cursor: pointer;
         ">Cadastrar Novo Pet</button>
    </a><br>
    <a href="/pet/pets">
        <button class="pet-card-button" type="button" style="
                                                                   margin-top: 8px;
                                                                   padding: 8px 16px;
                                                                   background-color: #f7b64e;
                                                                   color: white;
                                                                   border: none;
                                                                   border-radius: 4px;
                                                                   cursor: pointer;
                                                               ">Listar</button>
    </a>

    <div class="container-grid">
        <c:forEach var="pet" items="${pets}">
            <div class="pet-card">
                    <img class="pet-card-img" src="<c:url value='/resources/img/Logomarca.png'/>" alt="Imagem do Pet" />

                <h3>${pet.nome}</h3>
                <p>Raça: ${pet.raca}</p>
                <p>Idade: ${pet.idade} anos</p>
                <a href="/pet/${pet.id}">
                    <button  class="pet-card-button" type="button">Editar</button>
                </a>
                <form action="/pet/${pet.id}/delete" method="post" style="display:inline;">
                    <button class="pet-card-button" type="submit">Deletar</button>
                </form>
            </div>
        </c:forEach>
    </div>
</body>
</html>
