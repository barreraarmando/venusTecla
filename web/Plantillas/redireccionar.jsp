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
    <script>
        function mandar(){
            document.formulario.submit() 
        }
    </script>
    <body onload="mandar()">
        <%
            String usuario = (String) session.getAttribute("usuario");
            String contrasenia = (String) session.getAttribute("contrasenia");
        %>
        <form name="formulario" action="../LoginServlet" method="POST">
            <div style="visibility: hidden">
                <input type="password" name="user" value="<%=usuario%>" visibility="hidden">
                <input type="password" name="contra" value="<%=contrasenia%>" visibility="hidden">
            </div>
        </form>
    </body>
</html>
