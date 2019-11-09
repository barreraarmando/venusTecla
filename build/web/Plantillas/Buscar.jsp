<%-- 
    Document   : Buscar
    Created on : Nov 8, 2019, 11:54:19 AM
    Author     : rodri
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Encriptacion.AES"%>
<%@page import="java.util.Set"%>
<%@page import="servlets.LoginServlet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.net.UnknownHostException"%>
<%@page import="java.net.InetAddress"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Venus</title>
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
        function mandarPerfil(element){
            var nombre=element.innerHTML;
            var input = document.getElementById('otroPerfil');
            
            input.value=nombre;
            document.perfil.submit();
        }
        
        function seguir(element){
            var user=element.innerHTML;
            var input = document.getElementById('inseguir');
            
            input.value=user;
            document.formSeguir.submit();
        }
     </script>
    <%
        String busqueda ="";
        int contador=0;
        String rutalocal=getServletContext().getRealPath("/");
                String rutacarp=rutalocal+"Uploads";
                String nruta=rutacarp.replace("\\","/");
                String ruta=nruta.replaceAll("/build",""); 
                String objeto = "";
                
                File destino = new File(ruta);
                
        ServletRequestContext src = new ServletRequestContext(request);
        if(ServletFileUpload.isMultipartContent(src)){
                        DiskFileItemFactory factory = new DiskFileItemFactory((1024*1024),destino);
			ServletFileUpload upload = new  ServletFileUpload(factory);
			java.util.List lista = upload.parseRequest(src);
			java.util.Iterator it = lista.iterator();
 
			while(it.hasNext()){
				FileItem item=(FileItem)it.next();
				if(item.isFormField()){                                       
                                        if (item.getFieldName().equals("textBuscar"))
                                            busqueda = item.getString();
                                }
                        }
        }
    %>
    <body>
        <%@page import="java.io.*, java.text.SimpleDateFormat" %>
        <%
            String user = (String)session.getAttribute("usuario");
            String imagenperfil = (String)session.getAttribute("ImagenPerfil");
            
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
            ResultSet result, result2;
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/VENUS", "root", "n0m3l0");
                sta = con.createStatement();
                sta2 = con.createStatement();
                } catch (SQLException error) {
                    out.print(error.toString());
                }
            
            result = sta.executeQuery("select distinct * from usuario where Nombre_Usuario='"+busqueda+"'");
            result2 = sta2.executeQuery("select distinct * from usuario where Username_Usuario='"+busqueda+"'");
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
                <center><h1 style="font-family: 'Raleway', cursive; color: #8d3536; text-align: left;">Búsqueda: <%=busqueda%></h1></center>
            </div>
            <div class="Publicaciones">
            <form name="perfil" action="OtroPerfil.jsp" enctype=multipart/form-data method="POST">
                        <%
                                while(result.next()){
                                    out.println("<div class='publicacion'style='width:100%'>");
                                    out.println("<img src='../" + result.getString("Imagen_Usuario") + "'/>");
                                    out.println("<br>");
                                    out.println("<p class='nombre Raleway' style='text-decoration: underline; cursor:pointer;' "
                                            + "onclick='mandarPerfil(nombresito"+contador+")'>"+result.getString("Nombre_Usuario")+"</p>");
                                    out.println("<p id='nombresito"+contador+"' class='user Raleway'>"+result.getString("Username_Usuario")+"</p>");                                    
                                    out.println("<button type='button' class='btn btnR btnDerecha' onclick='seguir(nombresito"+contador+")'>Seguir</button>");
                                    contador++;
                                    out.println("</div>");
                                }
                                while(result2.next()){
                                    out.println("<div class='publicacion'>");
                                    out.println("<img src='../" + result2.getString("Imagen_Usuario") + "'/>");
                                    out.println("<br>");
                                    out.println("<p class='nombre Raleway' style='text-decoration: underline; cursor:pointer;' "
                                            + "onclick='mandarPerfil(nombresito"+contador+")'>"+result2.getString("Nombre_Usuario")+"</p>");
                                    out.println("<p id='nombresito"+contador+"' class='user Raleway'>"+result2.getString("Username_Usuario")+"</p>");
                                    out.println("<button type='button' class='btn btnR btnDerecha' onclick='seguir(nombresito"+contador+")'>Seguir</button>");
                                    contador++;
                                    out.println("</div>");
                                }
                                con.close();
                        %>                  
                </div>  
            <div><input id="otroPerfil" name="quien" style="display: none" type="text"></div>
            </form>
            <form name="formSeguir" action="Seguir.jsp" enctype=multipart/form-data method="POST">
                <div><input id="inseguir" name="seguire" style="display: none" type="text"></div>
            </form>
    </body>
</html>