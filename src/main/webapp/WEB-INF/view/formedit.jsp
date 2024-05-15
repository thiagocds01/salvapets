<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Book Library</title>
</head>
<body>
    <div>
        <h2>Atualizar cadastro de livro</h2>
        <div>
            <div>
                <form:form action="/biblioteca/${livros.id}/update"  method="post">
                    <div>
                        <div>
                            Livro: ${livros.id}
                        </div>
                        <div>       
							Nome: <input type="text" value="${livros.nome}" name="nome"/><br>
							Raça: <input type="text" value="${livros.raca}" name="raca"/><br>
							Porte da Raça: <input type="text" value="${livros.porteRaca}" name="porteRaca"/><br><br>
							Sexo: <input type="text" value="${livros.sexo}" name="sexo"/><br><br>
							Cor: <input type="text" value="${livros.cor}" name="cor"/><br><br>
							Idade: <input type="text" value="${livros.idade}" name="idade"/><br><br>
							Historia: <input type="text" value="${livros.historia}" name="historia"/><br><br>
							Imagem: <input type="file" value="${livros.imagem}" name="imagem"/><br><br>
							
                        </div>
                    
                    </div>
                    <div>
                        <div>
                            <button type="submit">Atualizar datdsds</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    </body>
</html>