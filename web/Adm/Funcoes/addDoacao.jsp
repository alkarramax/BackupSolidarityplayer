<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Cadastrar Doação</title>
        <style>
            body {
                margin: 12px;
            }
            
        </style>
    </head>
    <body>
        <form action="../../cadastrarDoacao" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>Nome da doação: </label>
                <input type="text" class="form-control" name="nome" >
            </div>
            <div class="form-group">
                <label>Descrição: </label>
                <textarea class="form-control" name="descricao" ></textarea>
            </div>
            <div class="form-group">
                <label>Local: </label>
                <input type="text" class="form-control" name="local" >
            </div>
            <div class="form-group">
                <label>Data: </label>
                <input type="date" class="form-control" name="data" >
            </div>
            
            </br>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
            <a href="../administrador.jsp" class="btn btn-default">Voltar</a>
        </form>
        
    </body>
</html>
