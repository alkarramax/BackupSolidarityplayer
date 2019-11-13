<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../admin.css"/>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Cadastrar Voluntariado</title>
        
        <style>
            body {
                margin: 10px;
            }
        </style>
    </head>
    <body>
        <div class="row">
            <div class="col-md-6">
                <h3>Cadastrar Voluntariado</h3>
            </div>
        </div>
        <form action="../../cadastrarVoluntariado" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>Nome: </label>
                <input type="text" class="form-control" name="nome" >
            </div>
            <div class="form-group">
                <label>Local: </label>
                <input type="text" class="form-control" name="local" >
            </div>
            <div class="form-group">
                <label>Data:</label>
                <input type="date" class="form-control" name="data" >
            
                <label>Hora:</label>
                <input type="time" class="form-control" name="hora" >
            </div>
            <div class="form-group">
                <label>Descrição: </label>
                <textarea class="form-control" name="descricao"></textarea>
            </div>
            
            <div>
                <input type="file" name="file" size="50"/>
            </div>
            
            </br>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
            <a href="../administrador.jsp" class="btn btn-default">Voltar</a>
        </form>

    </body>
</html>

