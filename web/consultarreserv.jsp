<%-- 
    Document   : consultarreserv
    Created on : 15-may-2020, 11:42:54
    Author     : barba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Reservaciones</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="consult">
        <div id="consulta">
        <center>
            <h1>Consultar Reservaciones </h1>
             <jsp:include page="consultar.jsp" flush="true"/> 
        </center> 
        </div>
    </body>
</html>

