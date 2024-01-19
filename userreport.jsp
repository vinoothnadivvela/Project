<%-- 
    Document   : adminview
    Created on : 9 Jun, 2018, 6:53:24 PM
    Author     : Anbuu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="lightblue">
         <form action="index.jsp" method="post">
             <center><br><br>
        <h1><i><b>User Details!!!</b></i></h1>
       
         <table border="1" align="center">
                       
                       
             <td><b><i>UserName</i></b></td>
             <td><b><i>Password</i></b></td>
                                    <td><b><i>Confrim password</i></b></td>
                                    <td><b><i>Address</i></b></td>
                                   <td><b><i>Mobileno</i></b></td>
                                    <td><b><i>Emailid</i></b></td>
                                   
                                    <td><b><i>Pincode</i></b></td>
                                   
                                   
                                   
                                   
                                 
                                 
                                    
                            </tr>
               <%try{
                   
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root", "password");
                    ResultSet rs = null;
                    Statement st=null;
                    st=conn.createStatement();
                    rs = st.executeQuery("select * from registration ");
           int i=0; 
 
                while(rs.next()){ %>
                        <tr>

                           
                           
                            <td><i><%= rs.getString("username") %></i></td>
                            <td><i><%= rs.getString("password") %></i></td>
                            <td><i><%= rs.getString("confirmpassword") %></i></td>
                            <td><i><%= rs.getString("address") %></i></td>
                            <td><i><%= rs.getString("mobileno") %></i></td>
                           <td><i><%= rs.getString("emailid") %></i></td>
                            <td><i><%= rs.getString("pincode") %></i></td>
                           
                           
                            
                           
                             
                        </tr><%
                        
                                i++;
                                 
                }
                  }catch(SQLException e){ 
                            System.out.println(e);
                    } %>
                    </table><br><br>
                    <input type="submit" name="b1" value="Back">
           

    </center>
         </form>       
    </body>
</html>
