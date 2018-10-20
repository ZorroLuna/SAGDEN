/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Conexiones.InicializaComida;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import primeralgoritmo.Alimento;

/**
 *
 * @author root
 */
public class EstablecerComida extends HttpServlet {

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
            out.println("<title>Servlet EstablecerComida</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EstablecerComida at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        List<Alimento> personas = new ArrayList<>();
        PrintWriter out = response.getWriter();
        String tmb = request.getParameter("tmb");
       // String comidas = request.getParameter("nocomidas");
        int t = Integer.parseInt(tmb);
        //int c = Integer.parseInt(comidas);
        double com = t/5;
        InicializaComida p = new InicializaComida();

        out.println(" <table width='100%' class='table table-striped table-bordered table-hover' id='dataTables-example'>" );
             out.println("<thead>");           
             out.println("<tr class='odd gradeX'> ");
                out.println("<td>No. Comida</td>");
                out.println("<td>Alimento</td>");
		out.println("<td> Kcal </td>");
                out.println("<td>Porcion</td>");               
                
		out.println("</tr>");
                out.println("</thead>");
		for(int i=0; i<5; i++){
                    personas = p.inicializaPersona(com);
                    for(int j=0;j<personas.size();j++){
			Alimento persona1 = personas.get(j);
                     
                            out.println("<tbody>");
                            out.println("<tr class = 'even gradeC'>");
                            out.println("<td>"+i+"</td>");
                            out.println("<td>"+persona1.getNomAl()+"</td>");
                            out.println("<td>"+persona1.getkcal()+"</td>");
                            out.println("<td>"+persona1.getPorcion()+"</td>");
                            out.println("</tr>");
                            out.println("</tbody>");
                    }
                        
		}
		out.println("</table>");
        
        
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
