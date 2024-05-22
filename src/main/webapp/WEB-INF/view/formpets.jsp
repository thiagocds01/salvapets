<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Pets</title>
</head>
<body>
    <h2>Cadastrar Pets</h2>
<form action="/pet/cadastrar" method="post" >
    <input type="text" name="nome" placeholder="Nome do Pet" required><br>
    <input type="text" name="raca" placeholder="Raça do Pet" required><br>
    <input type="number" name="idade" placeholder="Idade do Pet" required><br>
    <input type="file" name="imagem" accept="image/*" required><br>
    <button type="submit">Cadastrar</button>
</form>
    <a href="/pet"><button type="submit"> Voltar</button</a>
</body>
</html>
