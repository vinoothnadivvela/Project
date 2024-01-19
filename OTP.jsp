<%-- 
    Document   : Custlogin
    Created on : Jan 25, 2019, 7:56:08 PM
    Author     : Anju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    HttpSession se=request.getSession();
    String uname=se.getAttribute("uname").toString();
    String em=se.getAttribute("em").toString();
    String tamnt=se.getAttribute("tamnt").toString();
     String ss=se.getAttribute("ss").toString();
     System.out.println("SSSSSSS: "+ss);
    System.out.println("otp1 :  uname "+uname);
    
    se.setAttribute("uname", uname);
      se.setAttribute("em", em);
      se.setAttribute("tamnt", tamnt);
       se.setAttribute("ss", ss);
    
    %>
    <body>
    <center>
       <div class="login-page">
  <div class="form">
   
      <form class="login-form" action="OTP" method="post">
     
      <input type="text"  name="otp" placeholder="Enter the OTP"/>
      <button>login</button>
     
    </form>
  </div>
</div>
   
    </body>
</html>
