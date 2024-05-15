<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Biblioteca</title>
</head>
<body>
    <div>
        <div>
            <h2>Biblioteca</h2>
            <hr/>
            <a href="/biblioteca/cadastrar">
                <button type="submit">Cadastrar novo</button>
            </a>
            <a href="/biblioteca/livros"><br>
                <button type="submit">Listar</button>
            </a>
            <br/><br/>
            <div>
                <div>
                    <div>Biblioteca</div>
                </div>
                <div>
                    <table border=1 frame=hsides rules=rows>
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>Raça</th>
                         	<th>Porte da Raça</th>
                            <th>Sexo</th>
                            <th>Cor</th>
                            <th>Idade</th>
                            <th>Historia</th>
                            <th>Imagem</th>
                            
                        </tr>
                        <c:forEach var="livro" items="${livros}">
                            <tr>
                                <td>${livro.id}></td>
                                <td>${livro.nome}</td>
                                <td>${livro.raca}</td>
                                <td>${livro.porteRaca}</td>
                                <td>${livro.sexo}</td>
                                <td>${livro.cor}</td>
                                <td>${livro.idade}</td>
                                <td>${livro.historia}</td>
                                <td><img border="0" alt="" src='data:image/png;base64,${livro.imagem}' width="100" height="100">
                                </td>
                                
                                <td>
                                    <a href="/biblioteca/${livro.id}">Editar</a>
                                    <form action="/biblioteca/${livro.id}/delete" method="post">
                                        <input type="submit" value="Excluir" />
                                    </form>
                                </td> 
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>