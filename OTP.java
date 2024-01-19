/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Anju
 */
@WebServlet(urlPatterns = {"/OTP"})
public class OTP extends HttpServlet {

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
            out.println("<title>Servlet OTP</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OTP at " + request.getContextPath() + "</h1>");
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
        
          HttpSession ses=request.getSession();
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        
        String qr=request.getParameter("otp");
        String s1=ses.getAttribute("uname").toString();
         String em=ses.getAttribute("em").toString();
         String tamnt=ses.getAttribute("tamnt").toString();
         String ss=ses.getAttribute("ss").toString();
         System.out.println("ss11111: "+ss);
        
         System.out.println(">>>aaa "+s1);
        try
        {
        if(ss.equals("paym2")){
       Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
            st=con.createStatement();
            rs=st.executeQuery("select * from customer where otp='"+qr+"' and  username='"+s1+"'");
            if(rs.next())
            {
               
                ses.setAttribute("uname", s1);
                ses.setAttribute("em", em);
                 ses.setAttribute("tamnt", tamnt);
                ses.setAttribute("ss", ss);
               response.sendRedirect("Payment.jsp");
            }
            else
            {
                response.sendRedirect("success_1.jsp");
                System.out.println("fail11");  
            }
        }else{
         Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
            st=con.createStatement();
            rs=st.executeQuery("select * from customer where otp='"+qr+"' and  username='"+s1+"'");
            if(rs.next())
            {
               
                ses.setAttribute("uname", s1);
                ses.setAttribute("em", em);
                response.sendRedirect("ticketing.jsp");
            }
            else
            {
                System.out.println("fail22");
            }
        
        
        }
        }
        catch(ClassNotFoundException | SQLException | IOException ex)
        {
            System.out.println(ex);
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
