<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <title>Categoriais</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
        <h1>Categorias</h1>
            <a href="/categoria/insert" class="btn btn-primary" >Nova Categoria</a>
            <a href="/" class="btn btn-primary">Voltar</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${categorias}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>
                            <a href="/categoria/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/categoria/delete?id=${item.id}" class="btn btn-danger">Remover</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>