    
<%@page import="java.sql.*"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="sobreCampanhaEstilo.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Campanha</title>
    <link rel="shortcut icon" type="image/x-icon" href="imagens/7618Logo.ico">
    
   
</head>
<body>
    <%
        Connection connection = DBConnection.getConnection();
        Statement st = connection.createStatement();
        String u = request.getParameter("c");
        int num = Integer.parseInt(u);

        String data = "select * from campanha where id_campanha='"+num+"'";
        ResultSet rs = st.executeQuery(data);
        while(rs.next()) {
    %>
    <nav>
        <svg  onclick="Nova()" id="i-chevron-left" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" width="32" height="32" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
            <path d="M20 30 L8 16 20 2" />
        </svg>
        <img src="../imagensSobre/Logo.png" alt="">
    </nav>
    <div class="text-sobre">
        <h2><%=rs.getString("nome")%></h2>
        <p><%=rs.getString("descricao")%></p>
    </div>
    <div class="text-sobre-info"> 
        <div class="text-sobre-info-detalhe">
            <p>Local:</p>
            <p><%=rs.getString("local")%></p>
        </div>
        <div class="text-sobre-info-detalhe">
            <p>Data início:</p>
            <p><%=rs.getString("dataInicio")%></p>
        </div>
        <div class="text-sobre-info-detalhe">
            <p>Data de término</p>
            <p><%=rs.getString("dataTermino")%></p>
        </div>
    </div>
    <%
    }
    %>
    <div id="contact" class="contact">
            <form>
                <div class="form-separator">
                    <div class="input">
                        <div class="caixa-input">
                            <img src="../imagensSobre/avatar.png" alt=""/>
                            <input id="name" type="text" placeholder="Nome"/> <!--placeholder="" dica do input-->
                        </div>
                    </div>
                    <div class="input">
                        <div class="caixa-input">
                            <img src="../imagensSobre/mail (3).png" alt=""/>
                            <input id="email" type="text" placeholder="E-mail"/> 
                        </div>
                    </div>
                </div>
                <div class="form-separator">
                    <div class="input">
                        <div class="caixa-input">
                            <img src="../imagensSobre/suitcase.png" alt=""/>
                            <input id="cargo" type="text" placeholder="Cargo"/> <!--placeholder="" dica do input-->
                        </div>
                    </div>
                    <div class="input">
                        <div class="caixa-input">
                            <img src="../imagensSobre/office-block.png" alt=""/>
                            <input id="unidade" type="text" placeholder="Unidade"/> 
                        </div>
                    </div>
                </div>
                
            </form>
            <div class="button-doar">
                    <button type="button" class="btn btn-primary">Participar</button>
            </div>
        </div>
    
     <script>
        function Nova() {
            location.href="/SA-JSP/Home/home.jsp";
        }
    </script>
</body>
</html>
