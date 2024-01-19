<%-- 
    Document   : Homeloan
    Created on : Jun 14, 2018, 6:33:08 PM
    Author     : prakash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vegetable Page</title>
    </head>
    <%
    
    HttpSession se=request.getSession();
     //String item=se.getAttribute("item").toString();
    String prd=se.getAttribute("prod").toString();
     String qua=se.getAttribute("qua").toString();
      String pri=se.getAttribute("pric").toString();
      String amnt=se.getAttribute("tlam").toString();
       String name=se.getAttribute("name").toString();
      System.out.println(prd+">>>"+qua+">..."+pri);
       
     // se.setAttribute("item", item);
                se.setAttribute("prod", prd);
                se.setAttribute("qua", qua);
                se.setAttribute("pric", pri);
                se.setAttribute("tlam", amnt);
              se.setAttribute("name", name);
    %>
    <body style="background-color: #a6e1ec">
        
        <h1><b><i>Welcome !!!...</i></b></h1>  
        <form action="success.jsp" method="post">
            <center>
            <br><br><br><br>
             <h1><b><i>Selected Item and Price Details</i></b></h1>
             <br><br><br>
           
        <table>
            <tbody>
                
                <tr>
                    <td> Product Name : </td> <td><input type="text" style="height: 35px;width: 120px"  name="name" value="<%=prd%>"/></td>
                    
                </tr>
                 <tr>
                  <td> Quantity : </td> <td> <input type="number" style="height: 35px;width: 120px" name="a2" value="<%=qua%>"/></td>
                    
                </tr>
                <tr>
                    <td>Per Piece Amount :</td> <td>  <input type="number" style="height: 35px;width: 120px"  name="a2" value="<%=pri%>"/></td>
                    
                </tr>
                <tr>
                  <td> Total Amount : </td> <td>  <input type="number" style="height: 35px;width: 120px"  name="a2" value="<%=amnt%>"/></td>
                    
                </tr>
      </tbody>
        </table>
        <br>
        <input type="submit" value="Submit" />
            </center>
    </form>
   
    </body>
</html>
                     
                                                