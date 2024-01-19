<%-- 
    Document   : customer
    Created on : 9 Nov, 2020, 10:47:21 PM
    Author     : h
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.commondb.Common_DB"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Customer Details</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize_1.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
        <style>
            input[type="checkbox"]{
  width: 30px; /*Desired width*/
  height: 30px; /*Desired height*/
}
    a:link, a:visited {
  background-color: #30e60b;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
        </style>
	<body align="center">
		<div class="container">
			<!-- Top Navigation -->
			
			<header>
				<h1>CUSTOMER INFORMATION</h1>	
				
			</header>
			<div class="component">
				
				<table class="">
					<thead>
						<tr>
						
                        <th>username</th>
                        <th>password</th>
                        <th>email</th>
                        <th>mobile</th>
                        <th>first name</th>
                        <th>last name</th>
                        <th>DOB</th>
						</tr>
					</thead>
					<tbody>
                                             <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","password");
                    Statement st=con.createStatement();
                    String query="SELECT * FROM customer";
                    ResultSet rs1=st.executeQuery(query);
                        //ResultSet rs1=Common_DB.ViewTable("counselling", "college");
                        while(rs1.next())
                        {
                     %>
						<tr>
                        <td><%=rs1.getString("username")%></td>
                        <td><%=rs1.getString("password")%></td>
                        <td><%=rs1.getString("email")%></td>
                        <td><%=rs1.getString("mobileno")%></td>
                        <td><%=rs1.getString("firstname")%></td>
                        <td><%=rs1.getString("lastname")%></td>
                        <td><%=rs1.getString("dob")%></td>
                                                       
						</tr>
                                                <%
            }
            %>
					</tbody>
                                        
                                      
				</table>
                           <a href="index.html" >LOGOUT</a>
				
			
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
                
	</body>
</html>
