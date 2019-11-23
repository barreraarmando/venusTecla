<!--
Integrantes del equipo:
-Rodrigo Sánchez Torres 
-Hugo Santiago Gómez Salas 
Grupo: 2CM3 
Profesor: Tecla Parra Roberto 
Fecha: 11/23/2019  
Unidad de aprendizaje: Programación Orientada a Objetos 
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.invalidate();
        response.sendRedirect("Inicio.html");
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
