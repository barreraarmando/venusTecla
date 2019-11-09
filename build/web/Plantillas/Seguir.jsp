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
        <form name="formvolver" action="Buscar.jsp" enctype=multipart/form-data method="POST">
        <%
            String userPrincipal = (String)session.getAttribute("usuario");
            String userseguidor="";
            int IdUsuario=Integer.parseInt((String)session.getAttribute("IdUser"));
            int IdUsuarioSeguidor=0;
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
                        if (item.getFieldName().equals("seguire"))
                            userseguidor = item.getString();
                    }
                }
            }
            
            Connection con = null;
            Statement sta = null;
            Statement sta2 = null;
            ResultSet result;
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/VENUS", "root", "n0m3l0");
                sta = con.createStatement();
                sta2 = con.createStatement();
                } catch (SQLException error) {
                    out.print(error.toString());
                }
            
            result=sta2.executeQuery("select Id_Usuario from usuario where Username_Usuario='"+userseguidor+"';");
            if(result.next()){
                IdUsuarioSeguidor=result.getInt("Id_Usuario");
            }
            
            try {            
                sta.executeUpdate("insert into siguiendo values('"+IdUsuario+"', '"+IdUsuarioSeguidor+"');");
                sta.executeUpdate("insert into seguidor values('"+IdUsuarioSeguidor+"', '"+IdUsuario+"');"); 
                out.println("<script>alert('El usuario se ha añadido a tu lista de seguidos');window.location.href = 'Menu.jsp';</script>");
            }catch (SQLException error) {     
                    out.println("<script>alert('Ya sigues a este usuario'); window.location.href = 'Menu.jsp';</script>");
                    out.println(error);
                }
            con.close();
            
            con.close();
        %>
        <p>Espera un momento....<%=IdUsuarioSeguidor%></p>
        <textarea id="x" name="textBuscar" style="display: none" type="text" value="<%=userseguidor%>"/>
        </form>
    </body>
</html>
