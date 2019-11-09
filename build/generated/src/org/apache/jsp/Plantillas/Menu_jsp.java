package org.apache.jsp.Plantillas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.io.*;
import java.text.SimpleDateFormat;

public final class Menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Venus</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Dancing+Script|Montserrat|Raleway\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"../font-awesome-4.7.0/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("         <script src=\"../JS/desplegar.js\" type=\"text/javascript\"></script>\r\n");
      out.write("         <script src=\"../JS/subirArchivo.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <link href=\"../css/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../css/menuA.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../css/General.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../css/botones.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"../Img/logo3.png\">\r\n");
      out.write("        <link href=\"../css/TimeLine.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../font-Awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/menuA.css\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../css/General.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/menu.css\" type=\"text/css\">\r\n");
      out.write("        <link href=\"../css/desplegable.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <script src=\"../JS/desplegar.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <link href=\"../css/botones.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat|Raleway|Lobster+Two|Pacifico\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../font-Awesome/css/font-awesome.min.css\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"../css/Perfil/Inicio.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <script src=\"../JS/subirArchivo.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <link href=\"../css/Perfil/cambios.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <script>\r\n");
      out.write("        function publicacion(){\r\n");
      out.write("                var texto = document.publicar.contenidoPublicacion.value;\r\n");
      out.write("                var imagen = document.publicar.image.value;\r\n");
      out.write("                \r\n");
      out.write("                if ((texto === \"\" || texto === \" \") && imagen === \"\"){\r\n");
      out.write("                    alert(\"Para realizar una publicación necesitas ingresar una imagen o un texto\");\r\n");
      out.write("                }\r\n");
      out.write("                else{\r\n");
      out.write("                    document.publicar.submit() \r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        \r\n");
      out.write("    </script>\r\n");
      out.write("    <body onload=\"deshabilitaRetroceso() \" >\r\n");
      out.write("        <form name=\"publicar\" action=\"Publicar2.jsp\" enctype=multipart/form-data method=\"POST\">\r\n");
      out.write("        \r\n");
      out.write("        ");

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
            ResultSet result, resultaPub;
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/VENUS", "root", "n0m3l0");
                sta = con.createStatement();
                sta2 = con.createStatement();
                } catch (SQLException error) {
                    out.print(error.toString());
                }
            
            ResultSet resultado = sta.executeQuery("select * from publicacion order by fecha desc") ;
            
        
      out.write("\r\n");
      out.write("        <div class=\"MenuA\">\r\n");
      out.write("            <div class=\"Logo\">\r\n");
      out.write("                <img src=\"../Img/logo3.png\" alt=\"\"/>\r\n");
      out.write("            </div>\r\n");
      out.write("                <div class=\"Venus\"style=\"float: left\">\r\n");
      out.write("                Venus\r\n");
      out.write("                </div>\r\n");
      out.write("            <div class=\"Derecha\">\r\n");
      out.write("                <div class=\"Reloj\" name=\"cron\" id=\"cronometro\">\r\n");
      out.write("                    <h2 class=\"letraReloj\"><br>");
      out.print(hora);
      out.write("<br>Ultima conexion: ");
      out.print(conexion);
      out.write("</h2>\r\n");
      out.write("                </div>\r\n");
      out.write("                <ul class=\"ca-menu\"> \r\n");
      out.write("                    <li class=\"chico\">\r\n");
      out.write("                        <a href=\"salir.jsp\">\r\n");
      out.write("                            <span class=\"fa fa-sign-out\" id=\"H\"></span>\r\n");
      out.write("                            <div class=\"ca-content\">\r\n");
      out.write("                                <h2 class=\"ca-main\">Salir</h2>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <nav>\r\n");
      out.write("                <ul class=\"mcd-menu\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"Menu.jsp\" class=\"active\">\r\n");
      out.write("                                <i class=\"fa fa-home\"></i>\r\n");
      out.write("                                <strong>Home</strong>\r\n");
      out.write("                                <small>sweet home</small>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"../Perfil/Perfil.jsp\">\r\n");
      out.write("                                <i class=\"fa fa-user\"></i>\r\n");
      out.write("                                <strong>Perfil</strong>\r\n");
      out.write("                                <small>Tu privacidad</small>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("            </nav>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"TimeLine\">\r\n");
      out.write("            <div class=\"bien\">\r\n");
      out.write("                <center><h1 style=\"font-family: 'Raleway', cursive; color: #8d3536;;\">¡Bienvenido: ");
      out.print(user);
      out.write("!  <img style=\"height: 50px; width: 50px; border-radius: 50%\" src=\"../");
      out.print(imagenperfil);
      out.write("\"></h1></center>\r\n");
      out.write("            </div>\r\n");
      out.write("            <textarea name=\"textBuscar\" id =\"cajaBuscar\" placeholder=\"Buscar en Venus\" style=\"height: 25px; width:82% ; background-color: #FFFFFF;\"></textarea>\r\n");
      out.write("            <button type=\"button\" class=\"fa fa-picture-o imagen btn btnSR\" id=\"foto\">\r\n");
      out.write("                <p class=\"nada\" id=\"texto\" name=\"imagenTexto\"></p>\r\n");
      out.write("            </button>\r\n");
      out.write("            <BR><BR>\r\n");
      out.write("            <p class=\"DancingScript\">Publicar</p>\r\n");
      out.write("            <textarea name=\"contenidoPublicacion\" id=\"cajaPublicacion\"> </textarea><br>\r\n");
      out.write("            <button type=\"button\" class=\"fa fa-picture-o imagen btn btnSR\" id=\"foto\">\r\n");
      out.write("                <p class=\"nada\" id=\"texto\" name=\"imagenTexto\"></p>\r\n");
      out.write("                    <input type=\"file\" accept=\".jpg, .jpeg, .png\" id=\"imagen\" onchange=\"cambia(), diseno();\" class=\"inputfile\" name=\"image\" required=\"\"/>\r\n");
      out.write("            </button>\r\n");
      out.write("            <button type=\"button\" class=\"btn btnR btnDerecha\" onclick=\"publicacion()\">Publicar</button>\r\n");
      out.write("                <div class=\"Publicaciones\">\r\n");
      out.write("                    \r\n");
      out.write("                        ");

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
                        
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                </div>           \r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
