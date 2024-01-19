<%-- 
    Document   : Payment
    Created on : 20 Feb, 2021, 9:15:00 AM
    Author     : h
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Page</title>
         <%
    HttpSession se=request.getSession();
    String uname=se.getAttribute("uname").toString();
    String em=se.getAttribute("em").toString();
    System.out.println(uname);   
    se.setAttribute("uname", uname);
    
    
    %>
    </head>
    <body align="center">
        <form name="f1" action="PayAct" method="POST">
            <h1>Ticket Payment Page</h1>
            
            <br/>
            <br/>
            <br/>
            <hr>
            Booking page
            <hr>
            <br/>
            <br/>
            <br/>
            <label>Cardtype:</label>              
            <input type="text" name="card" value="" class="w3-container" required="" placeholder="enter the card Type">
            <br/>
            <br/>
            <label>Card No:</label>
            <input type="text" name="cardno" class="login-form" value="" required="" placeholder="enter the card number">
            <br/>
            <br/>
            <label>CVV No:</label>
            <input type="text" name="cvv" class="login-form" value="" required="" placeholder="enter the cvv">
            <br/>
            <br/>
            <label>Exp Date:</label>
            <input type="Date" name="date" class="login-form" value="" required="" placeholder="enter the card number">
            <br/>
            <br/>
            <br/>
            <br/>
            <hr>
            <input type="submit" name="Book" class="w3-black" value="Book">
            <hr/>
        </form>
    </body>
</html>
