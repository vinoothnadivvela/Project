/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ELCOT
 */
@WebServlet(urlPatterns = {"/Tickets"})
public class Tickets extends HttpServlet {

   
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
            out.println("<title>Servlet Tickets</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Tickets at " + request.getContextPath() + "</h1>");
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
        HttpSession ses=request.getSession();
        String s1=request.getParameter("from");
        String s2=request.getParameter("to");        
        String s3=request.getParameter("gender");
        String s4=request.getParameter("dob");
        String s7=request.getParameter("depature");
        String s8=request.getParameter("age");
        String s9=request.getParameter("mobileno");
        String s10=request.getParameter("proof");
        String s16 = request.getParameter("num");
        String s11=request.getParameter("SeatList");
        String s12=request.getParameter("classes");
        String s13=request.getParameter("adults");
        String s14=request.getParameter("kids");
        String uname=ses.getAttribute("uname").toString();
        String em=ses.getAttribute("em").toString();
        System.out.println("Seat:  "+s11);
        System.out.println("Username  "+uname);
        System.out.println("EM" +em);
        System.out.println("Class"+s12);
        String first = "First";
        String second = "Second";
        Connection con= null;
        
         try{
             
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/railway", "root", "password");
              PreparedStatement ps = con.prepareStatement("INSERT INTO fistcls values(?,?,?,?,?,?)");
              ps.setString(1, uname);
              ps.setString(2, s1);
              ps.setString(3, s2);
              ps.setString(4, s9);
              ps.setString(5, s11);
              ps.setString(6, s10);
              ps.executeUpdate();
              response.sendRedirect("Payment.jsp");
              System.out.println("ticket booking successfully");
             
         }
          catch(ClassNotFoundException | SQLException e){
              System.out.println(e);
          }
        
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
