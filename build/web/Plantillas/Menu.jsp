<!--
Integrantes del equipo:
-Rodrigo Sánchez Torres 
-Hugo Santiago Gómez Salas 
Grupo: 2CM3 
Profesor: Tecla Parra Roberto 
Fecha: 11/23/2019  
Unidad de aprendizaje: Programación Orientada a Objetos 
-->

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="servlets.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Venus</title>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Montserrat|Raleway" rel="stylesheet">
        <link href="../font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css"/>
         <script src="../JS/desplegar.js" type="text/javascript"></script>
         <script src="../JS/subirArchivo.js" type="text/javascript"></script>
        <link href="../css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="../css/menuA.css" rel="stylesheet" type="text/css"/>
        <link href="../css/General.css" rel="stylesheet" type="text/css"/>
        <link href="../css/botones.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" type="image/x-icon" href="../Img/logo3.png">
        <link href="../css/TimeLine.css" rel="stylesheet" type="text/css"/>
        <link href="../font-Awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <script>
        function publicacion(){
                var texto = document.publicar.contenidoPublicacion.value;
                var imagen = document.publicar.image.value;
                
                if ((texto === "" || texto === " ") && imagen === ""){
                    alert("Para realizar una publicación necesitas ingresar una imagen o un texto");
                }
                else{
                    document.publicar.submit();
                }
            }
            
        function buscarU(){
            document.buscar.submit();
        }
        function mandarPerfil(element){
            var nombre=element.innerHTML;
            var input = document.getElementById('otroPerfil');
            
            input.value=nombre;
            document.perfil.submit();
        }
    </script>
    <body onload="deshabilitaRetroceso() " >
        <form name="buscar" action="Buscar.jsp" enctype=multipart/form-data method="POST">
        
        <%@page import="java.io.*, java.text.SimpleDateFormat" %>
        <%
            Conexion objetoConexion=new Conexion();
            String user = (String)session.getAttribute("usuario");
            String imagenperfil = (String)session.getAttribute("ImagenPerfil");
            int contador=0;
            
            if(user ==null)
            {
                response.sendRedirect("Inicio.html");
                return; //the return is important; forces redirect to go now
            }
            DateFormat formatter = DateFormat.getDateTimeInstance(DateFormat.MEDIUM,DateFormat.MEDIUM);           
            String conexion = (String) formatter.format(session.getAttribute("creacion"));
            
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            DateFormat otroformato = new SimpleDateFormat("HH:mm");
                       
            String ultima = (String) formatter.format(session.getAttribute("last"));
            
            long longDuracion= session.getCreationTime(); 
            Date duracion=new Date(longDuracion);
            Date actual = new Date();
            
            String crop = ("Tiempo en la sesion: " + duracion.getMinutes() + "min." + duracion.getSeconds()+"seg");
            int diferenciaHoras=actual.getHours() - duracion.getHours();
            int diferenciaMinutos=actual.getMinutes() - duracion.getMinutes();
            //Muestra el resultado en el textfield
            String hora="Tiempo en la sesion: "+diferenciaHoras+" horas, "+diferenciaMinutos+" minutos.";
            
            String nombre = (String)session.getAttribute("nombre");
            String IdUsuario = (String)session.getAttribute("IdUsuario");
            
            Connection con = null;
            Statement sta = null;
            Statement sta2=null;
            Statement sta3=null;
            ResultSet result, result2;
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con =objetoConexion.getConexion();
                //con = DriverManager.getConnection("jdbc:mysql://localhost/VENUS", "root", "n0m3l0");
                
                sta = con.createStatement();
                sta2 = con.createStatement();
                sta3 = con.createStatement();
                } catch (SQLException error) {
                    out.print(error.toString());
                }
            
            ResultSet resultado = sta.executeQuery(
                    "select * from(select usuario.Id_Usuario from usuario join siguiendo "
                            + "on siguiendo.Id_Siguiendo=usuario.Id_Usuario "
                            + "and siguiendo.Id_Usuario="+(Integer.parseInt(IdUsuario))+") as R1 "
                            + "join publicacion on publicacion.Id_Usuario=R1.Id_Usuario order by fecha desc;") ;
        %>
        <div class="MenuA">
            <div class="Logo">
                <img src="../Img/logo3.png" alt=""/>
            </div>
                <div class="Venus"style="float: left">
                Venus
                </div>
            <div class="Derecha">
                <div class="Reloj" name="cron" id="cronometro">
                    <h2 class="letraReloj"><br><%=hora%><br>Ultima conexion: <%=conexion%></h2>
                </div>
                <ul class="ca-menu"> 
                    <li class="chico">
                        <a href="salir.jsp">
                            <span class="fa fa-sign-out" id="H"></span>
                            <div class="ca-content">
                                <h2 class="ca-main">Salir</h2>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container">
            <nav>
                <ul class="mcd-menu">
                        <li>
                            <a href="Menu.jsp" class="active">
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
        <div class="TimeLine">
            <div class="bien">
                <center><h1 style="font-family: 'Raleway', cursive; color: #8d3536;;">¡Bienvenido: <%=user%>!  <img style="height: 50px; width: 50px; border-radius: 50%" src="../<%=imagenperfil%>"></h1></center>
            </div>
            
            <textarea name="textBuscar" id ="cajaBuscar" placeholder="Buscar en Venus" style="height: 25px; width:90% ; background-color: #FFFFFF;"></textarea>
            <button type="button" onclick="buscarU()"class="fa fa-map-pin imagen btn btnSR" style="font-size: 25px; height: 40px; width:6%;" id="foto">
                <p class="nada" name="imagenTexto"></p>
            </button>
            </form>
            <form name="publicar" action="Publicar2.jsp" enctype=multipart/form-data method="POST">
            <BR><BR>
            <p class="DancingScript">Publicar</p>
            <textarea name="contenidoPublicacion" id="cajaPublicacion"> </textarea><br>
            <button type="button" class="fa fa-picture-o imagen btn btnSR" id="foto">
                <p class="nada" id="texto" name="imagenTexto"></p>
                    <input type="file" accept=".jpg, .jpeg, .png" id="imagen" onchange="cambia(), diseno();" class="inputfile" name="image" required=""/>
            </button>
            <button type="button" class="btn btnR btnDerecha" onclick="publicacion()">Publicar</button>
                <div class="Publicaciones">
                    
                        <%
                            result2=sta3.executeQuery("select * from publicacion where Id_Usuario="+(Integer.parseInt(IdUsuario)));
                            while(result2.next()){
                                out.println("<div class='publicacion'>");
                            
                                out.println("<img src='../" + imagenperfil + "'/>");
                                out.println("<p class='nombre Raleway'>"+nombre+"</p>");
                                out.println("<p class='user Raleway'>"+user+"</p>");
                                out.println("<p class='contenido'> "+ result2.getString("contenido") +" </p>");
                                
                                    out.println("<div class='imagenCuadro'>");
                                        out.println("<div class='vertical'>");
                                        out.print("<img src='../"+ result2.getString("imagen") +"' class='publicacionImg' alt=''/>");
                                        out.println("</div>");
                                    out.println("</div>");
                                    
                                    out.println("<div class='fechaHora'>");
                                        out.println("<p class='fecha Raleway'>"+ result2.getString("fecha") +"</p>");
                                    out.println("</div>");
                                    
                            out.println("</div>");
                            }
                            while(resultado.next()){
                            ResultSet resultPub = sta2.executeQuery
                              ("select * from usuario where usuario.Id_Usuario="+resultado.getInt("Id_Usuario"));
                                if(resultPub.next()){
                                    out.println("<div class='publicacion'>");
                            
                                out.println("<img src='../" + resultPub.getString("Imagen_Usuario") + "'/>");
                                out.println("<p class='nombre Raleway'>"+resultPub.getString("Nombre_Usuario")+"</p>");
                                out.println("<p class='user Raleway'>"+resultPub.getString("Username_Usuario")+"</p>");
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
                            }
                        %>
                    
                </div>    
        </form>
        </div>
        <form name="perfil" action="OtroPerfil.jsp" enctype=multipart/form-data method="POST">
        <div class="Datos" style="position: absolute">
            <p class="nombreS">Seguidos:</p>
            <%
                result=sta.executeQuery("select distinct Nombre_Usuario, Imagen_Usuario, Username_Usuario from usuario join siguiendo "
                        + "on siguiendo.Id_Siguiendo=usuario.Id_Usuario and siguiendo.Id_Usuario="+(Integer.parseInt(IdUsuario))+";");
                while(result.next()){
                    out.println("<div class='publicacion'style='width:80%;'>");
                    out.println("<img style='max-width: 15%;' src='../" + result.getString("Imagen_Usuario") + "'/>");
                    out.println("<br>");
                    out.println("<p class='nombre Raleway' style='text-decoration: underline; cursor:pointer;' "
                        + "onclick='mandarPerfil(nombresito"+contador+")'>"+result.getString("Nombre_Usuario")+"</p>");
                    out.println("<p id='nombresito"+contador+"' class='user Raleway'>"+result.getString("Username_Usuario")+"</p>");                                    
                    contador++;
                    out.println("</div>");
                }
            %>
            <br>
            <p class="nombreS">Seguidores:</p>
            <%
                result=sta.executeQuery("select Nombre_Usuario, Imagen_Usuario, Username_Usuario from usuario join seguidor "
                        + "on seguidor.Id_Seguidor=usuario.Id_Usuario and seguidor.Id_Usuario="+(Integer.parseInt(IdUsuario))+";");
                while(result.next()){
                    out.println("<div class='publicacion'style='width:80%;'>");
                    out.println("<img style='max-width: 15%;' src='../" + result.getString("Imagen_Usuario") + "'/>");
                    out.println("<br>");
                    out.println("<p class='nombre Raleway' style='text-decoration: underline; cursor:pointer;' "
                        + "onclick='mandarPerfil(nombresito"+contador+")'>"+result.getString("Nombre_Usuario")+"</p>");
                    out.println("<p id='nombresito"+contador+"' class='user Raleway'>"+result.getString("Username_Usuario")+"</p>");                                    
                    contador++;
                    out.println("</div>");
                }
                
            %>   
        </div>
        <input id="otroPerfil" name="quien" style="display: none" type="text">
        </form>
    </body>
</html>
