<%@page import="servlets.Conexion"%>
<!--
Integrantes del equipo:
-Rodrigo Sánchez Torres 
-Hugo Santiago Gómez Salas 
Grupo: 2CM3 
Profesor: Tecla Parra Roberto 
Fecha: 11/23/2019  
Unidad de aprendizaje: Programación Orientada a Objetos 
-->

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="servlets.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Conexion objetoConexion=new Conexion();
            Connection con = null;
            Statement sta = null;
            ResultSet result;
            
            String contenido="";
            String IdUsuario = (String)session.getAttribute("IdUsuario");
            String objeto = "";
            
            String imagenvalid = "";
            
                String rutalocal=getServletContext().getRealPath("/");
                    String rutacarp=rutalocal+"Uploads/Publicaciones";
                    String nruta=rutacarp.replace("\\","/");
                    String ruta=nruta.replaceAll("/build",""); 

                    File destino = new File(ruta);

                    ServletRequestContext src = new ServletRequestContext(request);

                    if(ServletFileUpload.isMultipartContent(src)){
                            DiskFileItemFactory factory = new DiskFileItemFactory((1024*1024),destino);
                            ServletFileUpload upload = new  ServletFileUpload(factory);

                            java.util.List lista = upload.parseRequest(src);
                            File file = null;
                            java.util.Iterator it = lista.iterator();

                            while(it.hasNext()){
                                    FileItem item=(FileItem)it.next();
                                    if(item.isFormField()){                                       
                                            if (item.getFieldName().equals("contenidoPublicacion"))
                                                contenido = item.getString();
                                    }
                                    else
                                    {
                                        try{
                                            file=new File(item.getName());
                                            item.write(new File(destino,file.getName()));
                                            objeto = ("Uploads/Publicaciones/" + item.getName());
                                            out.println("Fichero subido");
                                        }catch(Exception e){
                                            break;
                                        }
                                    } // end if
                            } // end while
                    }
                
                try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = objetoConexion.getConexion();
                sta = con.createStatement();
                } catch (SQLException error) {
                    out.print(error.toString());
                }
                
                try {            
                        sta.executeUpdate("insert into publicacion (Id_Usuario, contenido, imagen) values('"+IdUsuario+"', '"+contenido+"', '"+objeto+"');");          
                        con.close();
                        out.println("<script>window.location.href = 'Menu.jsp';</script>");
                    }
                 catch (SQLException error) {     
                    out.println("<script>alert('Ha ocurrido un error con tu publicacion');window.location.href = 'Menu.jsp';</script>");
                    out.println(error);
                }
                con.close();
                %>
    </body>
</html>
