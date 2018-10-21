<%-- 
    Document   : Registro
    Created on : 23/05/2018, 03:18:34 PM
    Author     : root
--%>

<%@page import="java.util.Random"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.sendRedirect("index.jsp"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrando</title>
        
        
        
        
        
        
        
    </head>
    <body>
                        <java>
<%@page  import="java.sql.*" %>
<%
    String nombre=request.getParameter("nomU");
    int boleta = Integer.parseInt(request.getParameter("boleta"));
    String aPat= request.getParameter("aPaterno");
    String aMat= request.getParameter("aMaterno");
    int edad = Integer.parseInt(request.getParameter("edad"));
    String telefono = request.getParameter("tel");
    String fecha = request.getParameter("fecha");
    String email = request.getParameter("email");
    String cadena = request.getParameter("email") + request.getParameter("pass");
    String tipo =  request.getParameter("tipo");
    Random rnd = new Random();
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
Class.forName("com.mysql.jdbc.Driver");
Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");

Statement Estamento = conexion.createStatement();
Estamento.execute("INSERT INTO login VALUES("+Math.abs(rnd.nextInt())+",'"+res+"',1)");
ResultSet rs  = Estamento.executeQuery("SELECT idLogin from login where Hash='"+res+"'");
rs.next();
int inte = Integer.parseInt(rs.getString("idLogin"));
Estamento.execute("INSERT INTO ESTUDIANTE VALUES("+boleta+",'"+nombre+"','"+aPat+"','"+aMat+"',"+edad+",'"+telefono+"','"+fecha+"','"+email+"',2,"+inte+")");


Estamento.close();
conexion.close();
%>
</java>
    </body>
</html>
