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
import java.sql.ResultSet;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class Ticket extends HttpServlet {
    
    
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
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Ticket</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Ticket at " + request.getContextPath() + "</h1>");
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
         String s1=request.getParameter("from");
        String s2=request.getParameter("to");
        
       
      String s3=request.getParameter("gender");
      String s4=request.getParameter("dob");
        String s7=request.getParameter("depature");
        
        String s8=request.getParameter("age");
        String s9=request.getParameter("mobileno");
      String s10=request.getParameter("proof");
       String s11=request.getParameter("SeatList");
        String s12=request.getParameter("classes");
        
        String s13=request.getParameter("adults");
        String s14=request.getParameter("kids");
      String s15=request.getParameter("payment");
 
      String uname=ses.getAttribute("uname").toString();
      String em=ses.getAttribute("em").toString();
        System.out.println("mmmmm  "+s11);
        System.out.println("mmmmm  "+uname);
        String tamnt=null;
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
        
       
        try
        {
            if(s12.equals("Second")){
            Class.forName("com.mysql.jdbc.Driver");
           Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
          Statement st1=con1.createStatement();
          ResultSet rs1=st1.executeQuery("select * from trainfare where from1='"+s1+"' and to1='"+s2+"'");
          if(rs1.next()){
          

              String am=rs1.getString("amnt");
          String av=rs1.getString("avseat");
              
              int a=Integer.parseInt(am);
          int b=Integer.parseInt(s11);
          int st=Integer.parseInt(av);
          int c1=st-b;
          int c=a*b;
          tamnt=String.valueOf(c);
          String sv1=String.valueOf(c1);
          if(st>0){
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
          Statement stt=conn.createStatement();
          int rss=stt.executeUpdate("update trainfare set avseat='"+sv1+"' where from1='"+s1+"' and to1='"+s2+"'");
          if(rss>0){
              
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
          
          PreparedStatement ps=con.prepareStatement("Insert into ticket(uname,from1,to1,gender,dob,depature,age,mobileno,proof,SeatList,classes,adults,kids,payment,amount) VALUES('"+uname+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+tamnt+"')");
          
         
         int rs= ps.executeUpdate();
         if(rs>0){
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
           Statement stt1=conn1.createStatement();
          String qr="update customer set otp='"+pass+"' where username = '"+uname+"'";
          //update table emp set salary=2000 where empid=200"
           int rc= stt1.executeUpdate(qr);
         if(rc>0)
            {
       
          
          
           final String  from="testmailsoftware99@gmail.com";
               final String password="testmail280391";
               final String to="testmailsoftware99@gmail.com";
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(em));
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
      
      String ss="paym2";
       ses.setAttribute("uname", uname);
       ses.setAttribute("em", em);
       ses.setAttribute("tamnt", tamnt);
       ses.setAttribute("ss", ss);
      response.sendRedirect("OTP.jsp");
     
          
          
          
          
          
          
          
//          ses.setAttribute("tamnt", tamnt);
//           ses.setAttribute("uname", uname);
//           ses.setAttribute("em", em);
//          response.sendRedirect("Payment.jsp");
          }
         }
         
          else{
          
          String msg="Sorry Update failed";
          ses.setAttribute("msg", msg);
          response.sendRedirect("Success.jsp");
          
          }
          }
          }else{
          
          String mes="Seats are not available";
          ses.setAttribute("msg", mes);
          response.sendRedirect("Success.jsp");
          }
          }
            }
          else if(s12.equals("First")){
             Class.forName("com.mysql.jdbc.Driver");
           Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
          Statement st1=con1.createStatement();
          ResultSet rs1=st1.executeQuery("select * from fistcls where from1='"+s1+"' and to1='"+s2+"'");
          if(rs1.next()){
          

              String am=rs1.getString("amnt");
          String av=rs1.getString("avseat");
              
              int a=Integer.parseInt(am);
          int b=Integer.parseInt(s11);
          int st=Integer.parseInt(av);
          int c1=st-b;
          int c=a*b;
          tamnt=String.valueOf(c);
          String sv1=String.valueOf(c1);
          if(st>0){
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
          Statement stt=conn.createStatement();
          int rss=stt.executeUpdate("update fistcls set avseat='"+sv1+"' where from1='"+s1+"' and to1='"+s2+"'");
          if(rss>0){
              
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
          PreparedStatement ps=con.prepareStatement("Insert into ticket(uname,from1,to1,gender,dob,depature,age,mobileno,proof,SeatList,classes,adults,kids,payment,amount) VALUES('"+uname+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+tamnt+"')");
          
         
          int rs= ps.executeUpdate();
         if(rs>0){
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
           Statement stt1=conn1.createStatement();
          String qr="update customer set otp='"+pass+"' where username = '"+uname+"'";
          //update table emp set salary=2000 where empid=200"
           int rc= stt1.executeUpdate(qr);
         if(rc>0)
            {
       
          
          
           final String  from="testmailsoftware99@gmail.com";
               final String password="testmail280391";
               final String to="testmailsoftware99@gmail.com";
           
         Session session = Session.getInstance(properties, new javax.mail.Authenticator() 
         {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
            }});
         
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, 
         InternetAddress.parse(em));
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
     // response.sendRedirect("Success.jsp");
      String ss="paym2";
       ses.setAttribute("uname", s1);
       ses.setAttribute("em", em);
       ses.setAttribute("tamnt", tamnt);
       ses.setAttribute("ss", ss);
      response.sendRedirect("OTP.jsp");
     
            }
         }
          }
          
          else{
          
          String msg="Sorry Update failed";
          ses.setAttribute("msg", msg);
          response.sendRedirect("Success.jsp");
          
          }
          
          }else{
          
          String mes="Seats are not available";
          ses.setAttribute("msg", mes);
          response.sendRedirect("Success.jsp");
          }
          }
          }
          else{
                System.out.println("sorry fail....");
          }
        }
        catch(ClassNotFoundException | SQLException | IOException e)
        {
            System.out.println(e);
        } catch (MessagingException ex) {
            System.out.println(ex);
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
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
