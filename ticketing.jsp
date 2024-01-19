<%-- 
    Document   : ticketing
    Created on : Oct 25, 2019, 5:26:38 PM
    Author     : Dhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    HttpSession se=request.getSession();
    String uname=se.getAttribute("uname").toString();
    String em=se.getAttribute("em").toString();
    System.out.println(uname);   
    se.setAttribute("uname", uname);
    
    
    %>
    
    <body background="images/as.jpg">
       <form action="Tickets" method="post" />
 <br>
       <h1><b><i>Welcome <%=uname%></i></b></h1>  
   <center>
       
       <h1><b><i>Railway Reservation System</i></b></h1>
           
       
       <br><br>
       <h1 style="color:red"><i><b><u>Ticket Booking Page</u></b></i></h1>
       <br>
       
     
       
       

       
       
       <table border="0" style="height: 300px;width: 1000px;text-align: center;background: #fff">
           <tbody>
               <tr> 
                   <td>
                       <b><h3> FROM</h3></td></b>
                   <td>
            <select name="from" >
                 <option>---select---</option>
                <option>chennai</option>
                <option>Erode</option>
                
                
               </select>
                   </td>
           
                    <td>
                        <b><h3> TO</td></h3> </b>
                    <td>  
               <select name="to" >
                       <option>---select---</option>
                 <option>chennai</option>
                <option>Madurai</option>
                   <option>Trichy</option>
                   <option>cochin</option>
                   <option>pune</option>
                   <option>Mumbai</option>
                   <option>Erode</option>
                   <option>Thirunelveli</option>
                   <option>Kanyakumari</option>
                    <option>Govai</option>
                     <option>Salem</option>
                      <option>Villupuram</option>
                       <option>Nelagri</option>
                        <option>Thupathi</option>
                    <option>Arakonam</option>
               </td>
               </select>
               </tr>
           <tr>
               <td><i><b><h3>GENDER</b></i></h3> </td>
                                    <td>
                                        <select name="gender">
                                            <option>Male</option>
                                            <option>Female</option>
                                            </select>
                                   </td>
                                <td><i><h3><b> AGE</b></i></h3> </td>
                                    <td><input type="number" name="age" required field="enter number" required minlength="2" maxlength="2"/></td>

                     
</tr>
<tr>
                                     <td id="login-box-name"> <i><b><h3>DATE OF ARRIVAL :</b></h3></i></td>
				<td>			<b>
				<span class="cd-select">
				<select name="dob" id="dob">
								<option value="-1">Day</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								 
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								 
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								 
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								 
								<option value="31">31</option>
								</select>
								 
								<select id="dob1" name="dob1">
								<option value="-1">Month</option>
								<option value="January">Jan</option>
								<option value="February">Feb</option>
								<option value="March">Mar</option>
								<option value="April">Apr</option>
								<option value="May">May</option>
								<option value="June">Jun</option>
								<option value="July">Jul</option>
								<option value="August">Aug</option>
								<option value="September">Sep</option>
								<option value="October">Oct</option>
								<option value="November">Nov</option>
								<option value="December">Dec</option>
								</select>
								 
								<select name="dob2" id="dob2">
								 
								<option value="-1">Year</option> 
                                                                <option value="2019">2020</option>
                                                                <option value="2018">2019</option>
                                                                <option value="2017">2018</option>
                                                                <option value="2015">2017</option>
                                                                <option value="2014">2016</option>
                                                                <option value="2013">2015</option>
								<option value="2012">2014</option>
								<option value="2011">2013</option>
								<option value="2012">2012</option>
								<option value="2011">2011</option>
								<option value="2010">2010</option>
								<option value="2009">2009</option>
								<option value="2008">2008</option>
								<option value="2007">2007</option>
								<option value="2006">2006</option>
								<option value="2005">2005</option>
								<option value="2004">2004</option>
								<option value="2003">2003</option>
								<option value="2002">2002</option>
								<option value="2001">2001</option>
								<option value="2000">2000</option>
                                                                
                                                               
                       
                                                                   <td id="login-box-name"> <i><h3><b>DATE OF DEPATURE :</b></h3></i></td>
				<td>			<b>
				<span class="cd-select">
				<select name="depature" id="dob">
								<option value="-1">Day</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								 
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								 
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								 
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								 
								<option value="31">31</option>
								</select>
								 
								<select id="dob1" name="dob1">
								<option value="-1">Month</option>
								<option value="January">Jan</option>
								<option value="February">Feb</option>
								<option value="March">Mar</option>
								<option value="April">Apr</option>
								<option value="May">May</option>
								<option value="June">Jun</option>
								<option value="July">Jul</option>
								<option value="August">Aug</option>
								<option value="September">Sep</option>
								<option value="October">Oct</option>
								<option value="November">Nov</option>
								<option value="December">Dec</option>
								</select>
								 
								<select name="dob2" id="dob2">
								 
								<option value="-1">Year</option> 
                                                                <option value="2019">2020</option>
                                                                <option value="2018">2019</option>
                                                                <option value="2017">2018</option>
                                                                <option value="2015">2017</option>
                                                                <option value="2014">2016</option>
                                                                <option value="2013">2015</option>
								<option value="2012">2014</option>
								<option value="2011">2013</option>
								<option value="2012">2012</option>
								<option value="2011">2011</option>
								<option value="2010">2010</option>
								<option value="2009">2009</option>
								<option value="2008">2008</option>
								<option value="2007">2007</option>
								<option value="2006">2006</option>
								<option value="2005">2005</option>
								<option value="2004">2004</option>
								<option value="2003">2003</option>
								<option value="2002">2002</option>
								<option value="2001">2001</option>
								<option value="2000">2000</option>
								 </select>
                                     
                                        </tr>
<tr>
                                     <td><i><h3><b> MOBILE NO</b></i></h3> </td>
                                    <td><input type="number" name="mobileno" required field="enter number" required minlength="10" maxlength="10"/></td>
                                
                                    
    <td>
        <b><h3> <i>PROOF</i></td></h3> </b>
    <td>
            <select name="proof" >
                <option>Adhar card</option>
                <option>Voter id</option>
                   <option>License</option>
            </td>
            <td>
                <label>Card Number</label>
                <input type="number" name="num" value="" required="">
            </td>
                   
            </select> 
</tr>               
<tr><td>
        <b><h3> SEAT LIST</h3> </b></td>
    <td>
             <select name="SeatList" >
                <option>0</option>
                <option>1</option>
                   <option>2</option>
                   <option>3</option>
                   <option>4</option>
                   <option>5</option>
                   <option>6</option>
                   <option>7</option>
                   <option>8</option>
                   <option>9</option>
                   <option>10</option>
                   <option>12</option>
                   <option>13</option>
                   <option>14</option>
                   <option>15</option>
                   <option>16</option> 
                   <option>17</option>  
                   <option>18</option>
                   <option>19</option>
                   <option>20</option>
          </select> 
            </td>
            
           </tr>                                
          
           
           
    <td>
        <b><h3> <i> CLASSES </i></td></h3> </b>
    <td>
            <select name="classes" >
               
                <option>First</option>
                   <option>Second</option>
                   
            </td>
                   
            </select> 
</tr>    
                   <tr>
                       <td><i><h3><b> ADULTS</b></i></h3> </td>
                                    <td><input type="number" name="adults" required field="enter number" required minlength="10" maxlength="10"/></td>
                               
             
                 <td><i><h3><b> KIDS </b></i></h3> </td>
                                    <td><input type="number" name="kids" required field="enter number" required minlength="10" maxlength="10"/></td>
                                </tr>
  </select> 
</tr>    
          
           
           </tbody>
       </table><br>
       <input type="submit" value="Submit"/>
 
        </form>
   </center>
    </body>
</html>
