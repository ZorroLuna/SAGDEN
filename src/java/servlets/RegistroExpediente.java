/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class RegistroExpediente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistroExpediente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistroExpediente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       PrintWriter our = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");
            //String url = "jdbc:sqlserver://SERVIDOR1\\COMPAC:49767;databaseName=adNEISA";
           // Connection conn = DriverManager.getConnection(url,"sa","Solo1$$");
            Statement sa = conn.createStatement();
           
            String paciente=request.getParameter("paciente");
            String fecha=request.getParameter("fecha");
            String hora=request.getParameter("hora");
            String peso=request.getParameter("peso1");
            String talla=request.getParameter("talla");
            String imc=request.getParameter("imc");
            String ta=request.getParameter("ta");
            String fc=request.getParameter("fc");
            String tmp=request.getParameter("tmp");
            String glucosa=request.getParameter("glu");
            String oximetro=request.getParameter("oxi");
            String edad = request.getParameter("edad");
            String tmb =  request.getParameter("tmb1");
            int edad1 =0;
            String genero =  request.getParameter("genero");
            if (edad !=null){
                edad1 = Integer.parseInt(edad);
            }
            else{
                edad1 = 0;
            }
            
sa.execute("INSERT INTO diagnostico VALUES (default,'"+paciente+"','"+fecha+"','"+hora+"','"+peso+"','"+talla+"','"+imc+"','"+ta+"','"+fc+"','"+tmp+"','"+glucosa+"','"+oximetro+"','"+tmb+"','"+genero+"','"+edad1+"')");

            
            our.println("<p>Registro Exitoso</p>");
            response.sendRedirect("PlanAlimenticio.jsp");
        } catch (SQLException ex) {
          //  Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
           System.out.println("Error De Conexion" + ex.getMessage());
           our.println("<p>Registro Exitoso"+ex.getMessage()+"</p>");
           response.sendRedirect("error.jsp");
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error De Clase" + ex.getMessage());
            response.sendRedirect("error.jsp");
        } /*no olvidarse de cerrar las conexiones. */
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
