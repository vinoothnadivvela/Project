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
import java.sql.Statement;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
@WebServlet(urlPatterns = {"/Customer"})
public class Customer extends HttpServlet {
    
    
    static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * 
     */
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Customer</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Customer at " + request.getContextPath() + "</h1>");
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
        HttpSession se=request.getSession();
       
       Connection con=null;
       Statement st=null;
      String dCase = "abcdefghijklmnopqrstuvwxyz";
   String uCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 Random r=new  Random();  
        String pass = "";
		 while (pass.length () != 8)
{
            int rPick = r.nextInt(2);
            if (rPick == 0){
                int spot = r.nextInt(26);
                pass += dCase.charAt(spot);
            } else if (rPick == 1) {
                int spot = r.nextInt (26);
                pass += uCase.charAt(spot);

            }
        }


        System.out.println("OTP "+pass); 
     
           String s1=request.getParameter("username");
           String s2=request.getParameter("email");
           String s3=request.getParameter("password");
           String s4=request.getParameter("confirmpassword");
           String s5=request.getParameter("firstname");
           String s6=request.getParameter("lastname");
           String s7=request.getParameter("dob");
           
           String s8=request.getParameter("gender");
           String s9=request.getParameter("mobileno");
           
           
             
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
           //st=con.createStatement();
           PreparedStatement ps=con.prepareStatement("Insert into customer(username,email,password,confirmpassword,firstname,lastname,dob,gender,mobileno) Values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')");
           int rs=ps.executeUpdate();
           if(rs>0)
           {
               try{
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
           st=con.createStatement();
          String qr="update customer set otp='"+pass+"' where username = '"+s1+"'";
          //update table emp set salary=2000 where empid=200"
           int count1 = st.executeUpdate(qr);
         if(count1>0)
            {
                System.out.println("Success");
            
//            response.sendRedirect("index.html");
            final String  from="testmailsoftware99@gmail.com";
               final String password="pantech@987";
               final String to="testmailsoftware99@gmail.com";
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(s2));
         message.setSubject("OTP MESSAGE");
         //message.setSubject("private key");
        // String mgs="";
       //  msg="a;
         message.setText(pass);
         //message.setText("private key is "+"\n"+pri);
   
        Multipart multipart = new MimeMultipart();

      //addAttachments(multipart);
      //message.setContent(multipart);
      // Send message
      Transport.send(message);
      response.sendRedirect("OTP.jsp");
      se.setAttribute("uname", s1);
      
     
           }
           
           
           }
       
           catch(ClassNotFoundException | SQLException e){
              
               System.out.println(e);
           }   catch (MessagingException ex) {
                   Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
               }
                   }
       }
       catch(ClassNotFoundException | SQLException ex)
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
