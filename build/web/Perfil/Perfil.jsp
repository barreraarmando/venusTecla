<%-- 
    Document   : Perfil
    Created on : 14/03/2018, 02:40:06 PM
    Author     : Alumno
--%>

<%@page import="servlets.Conexion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="../Img/logo3.png">
        <link rel="stylesheet" href="../css/menuA.css" type="text/css"/>
        <link href="../css/General.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="../css/menu.css" type="text/css">
        <link href="../css/desplegable.css" rel="stylesheet" type="text/css"/>
        <script src="../JS/desplegar.js" type="text/javascript"></script>
        <link href="../css/botones.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Raleway|Lobster+Two|Pacifico" rel="stylesheet">
        <link rel="stylesheet" href="../font-Awesome/css/font-awesome.min.css" type="text/css"/>
        <link href="../css/Perfil/Inicio.css" rel="stylesheet" type="text/css"/>
        <script src="../JS/subirArchivo.js" type="text/javascript"></script>
        <link href="../css/Perfil/cambios.css" rel="stylesheet" type="text/css"/>
        <title>Venus</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function publicacion(){
                var texto = document.publicar.contenidoPublicacion.value;
                var imagen = document.publicar.image.value;
                
                if ((texto === "" || texto === " ") && imagen === ""){
                    alert("Para realizar una publicaci�n necesitas ingresar una imagen o un texto");
                }
                else{
                    document.publicar.submit() 
                }
            }
            
        </script>
    </head>
    <body>
        <%
            Conexion objetoConexion=new Conexion();
            String user = (String)session.getAttribute("usuario");
            String imagenperfil = (String)session.getAttribute("ImagenPerfil");
            String nombre = (String)session.getAttribute("nombre");
            String IdUsuario = (String)session.getAttribute("IdUsuario");
            
            Connection con = null;
            Statement sta = null;
            ResultSet result;
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = objetoConexion.getConexion();
                sta = con.createStatement();
                } catch (SQLException error) {
                    out.print(error.toString());
                }
            
            ResultSet resultado = sta.executeQuery("select * from publicacion where Id_Usuario = '"+IdUsuario+"' order by fecha desc") ;
        %>
        <div class="MenuA">
            <div class="Logo">
                <img src="../Img/logo3.png" alt=""/>
            </div>
            <div class="Derecha">
                <ul class="ca-menu">
                    <li class="chico">
                        <a href="../Plantillas/Inicio.html">
                            <span class="fa fa-sign-out" id="H"></span>
                            <div class="ca-content">
                                <h2 class="ca-main">Salir</h2>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="Venus">
                Venus
            </div>
        </div>
        <div class="Menu">
        <div class="Abrir">
            <button class="bars btnMenu" id="Abrir" style="visibility: hidden" onclick="w3_open()">
                <i class="fa fa-bars"></i><p>Men�</p>
            </button>
        </div>
        <div class="container">
            <nav>
                <ul class="mcd-menu">
                        <li>
                            <a href="../Plantillas/Menu.jsp" class="active">
                                <i class="fa fa-home"></i>
                                <strong>Home</strong>
                                <small>sweet home</small>
                            </a>
                        </li>
                        <li>
                            <a href="../Perfil/Perfil.jsp">
                                <i class="fa fa-user"></i>
                                <strong>Perfil</strong>
                                <small>Tu privacidad</small>
                            </a>
                        </li>
                    </ul>
            </nav>
        </div>
        </div>
        <div class="Inicio">
            <div class="PublicacionesGeneral">
                <p class="Raleway">Publicaciones</p>
                <div class="Publicaciones">
                    
                        <%
                            while(resultado.next()){
                            out.println("<div class='publicacion'>");
                            
                                out.println("<img src='../" + imagenperfil + "'/>");
                                out.println("<p class='nombre Raleway'>"+nombre+"</p>");
                                out.println("<p class='user Raleway'>"+user+"</p>");
                                out.println("<p class='contenido'> "+ resultado.getString("contenido") +" </p>");
                                
                                    out.println("<div class='imagenCuadro'>");
                                        out.println("<div class='vertical'>");
                                        out.print("<img src='../"+ resultado.getString("imagen") +"' class='publicacionImg' alt=''/>");
                                        out.println("</div>");
                                    out.println("</div>");
                                    
                                    out.println("<div class='fechaHora'>");
                                        out.println("<p class='fecha Raleway'>"+ resultado.getString("fecha") +"</p>");
                                    out.println("</div>");
                                    
                            out.println("</div>");
                            }
                        %>
                    
                </div>
            </div>
        </div>
        <div class="Datos">
            <center>
                <div class="NombreUser">
                    <p class="nombreS"><%=nombre%></p>
                    <p class="userS"><%=user%></p>
                </div>
                <img src="../<%=imagenperfil%>" alt=""/>     
            </center>
        </div>
    </body>
</html>
