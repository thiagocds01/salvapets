<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Pet</title>
</head>
<body>
    <h2>Editar Pet</h2>
    <form action="/${pet.id}/update" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${pet.nome}"><br>

        <label for="raca">Raça:</label>
        <input type="text" id="raca" name="raca" value="${pet.raca}"><br>

        <label for="idade">Idade:</label>
        <input type="number" id="idade" name="idade" value="${pet.idade}"><br>

        <label for="imagem">Imagem (Base64):</label>
        <textarea id="imagem" name="imagem">${pet.imagem}</textarea><br>

        <button type="submit">Atualizar</button>
    </form>
    <a href="/pet"><button type="submit"> Voltar</button</a>
</body>
</html>
