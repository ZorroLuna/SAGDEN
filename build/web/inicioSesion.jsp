<%-- 
    Document   : inicioSesion
    Created on : 20/05/2018, 04:25:47 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciando</title>
    </head>
    <body>
        <java>
        <%@page  import="java.sql.*" %>
        <%@page import=" java.security.NoSuchAlgorithmException" %>
        <%@page import ="java.security.MessageDigest"%>
        <%@page import ="javax.servlet.http.HttpSession"%>
        <%
            String cadena = request.getParameter("email") + request.getParameter("password");
            session=request.getSession(true);
            session.setAttribute("variableSession", request.getParameter("email"));
            String res=" ";
            MessageDigest md = null;
                try {
                        md = MessageDigest.getInstance("SHA-256");
                } 
                catch (NoSuchAlgorithmException e) {		
                        e.printStackTrace();

                }

                byte[] hash = md.digest(cadena.getBytes());
                StringBuffer sb = new StringBuffer();

                for(byte b : hash) {        
                        sb.append(String.format("%02x", b));
                }
                res=sb.toString();
                //System.out.println(res);

        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");

        Statement Estamento = conexion.createStatement();
        ResultSet rs = Estamento.executeQuery("SELECT Hash FROM login where Hash = '"+res+"'");
        
        /*ResultSet rs1 = Estamento.executeQuery("SELECT Tipocuenta_idTipocuenta FROM login where Hash = '"+res+"'");
        rs1.next(); */
        //session.setAttribute("tipoCuenta", rs1.getString("Tipocuenta_idTipocuenta"));
        //out.println("<p>Hash Generado</p>" + "<p>"+ res +"</p>");
        while (rs.next()) {

            if(rs.getString("Hash").equals(res)){
        //out.println("<p> es tu contraseña</p><h1><a href='index.jsp' class='active'>Regresar</a></h1></p>");
        response.sendRedirect("Inicio.jsp");
            }
 

        }
        //response.sendRedirect("Bienvenido.htm");
        /*if(res!=rs.toString()){
            out.println("<p>Error en inicio sesion</p>" + "<p>"+ res +"</p>");
            //response.sendRedirect("Bienvenido.htm");
        }
        else{
            response.sendRedirect("Menu.htm");
        }*/
        Estamento.close();
        conexion.close();
        %>
        </java>
    </body>
</html>
