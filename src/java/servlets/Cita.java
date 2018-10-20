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
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author root
 */
public class Cita extends HttpServlet {

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
            out.println("<title>Servlet Cita</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Cita at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            HttpSession session=request.getSession(true);
session.setAttribute("variableSession", "holaSession");
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
        //processRequest(request, response);
         PrintWriter our = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");
            //String url = "jdbc:sqlserver://SERVIDOR1\\COMPAC:49767;databaseName=adNEISA";
           // Connection conn = DriverManager.getConnection(url,"sa","Solo1$$");
            Statement sa = conn.createStatement();
            String fecha=request.getParameter("fecha");
Random rnd = new Random();           

            
sa.execute("INSERT INTO cita VALUES ("+Math.abs(rnd.nextInt())+",DATE('"+fecha+"'),2)");

            
            our.println("<p>Registro Exitoso</p>");
            response.sendRedirect("PlanAlimenticio.jsp");
        } catch (SQLException ex) {
          //  Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
           System.out.println("SUCCESS");
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
