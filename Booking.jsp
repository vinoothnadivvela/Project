<%-- 
    Document   : Booking
    Created on : Jun 7, 2018, 4:12:06 PM
    Author     : Vinothini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellow">
        <form action="index.jsp" method="post">
    <center><br>
        <h1 style="color:red"><i><b>Plane Timing!!!!!!!<i><b></h1>
                            <br><br>
                            
                            <table border="1" width="2" cellspacing="2" cellpadding="2">
                                <thead>
                                    <tr>
                                        <th><h1>Train Name</h1></th>
                            <th><h1>Train No</h1></th>
<th><h1>Arrival to departure</h1></th>
<th><h1>Duration</h1></th>
<th><h1>timing</h1></th>
<th><h1>amount</h1></th>
 </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><h2>Vaigai Express</h2></td>
                                        <td><h2>12636</h2></td>
                                        <td><h2>chennai Egmore to Madurai</h2></td>
                                        <td><h2>7hr 40m</h2></td>
                                        <td><h2>13.00p.m to 15.00p.m</h2></td>
                                        <td><h2>550</h2></td>
                                    </tr>
                                    <tr>
                                        <td> <h2> Rajdhani Express</h2></td> 
                                        <td> <h2>12433</h2></td>
                                        <td><h2>Chennai Central to H Nizamuddin</h2></td>
                                        <td><h2>28hr 10m</h2></td>
                                        <td><h2>18.00a.m to 21.00p.m </h2></td>
                                         <td><h2> 13500</h2></td>
                                        
                                    </tr>
                                    <tr>
                                        <td><h2> thai airways</h2></td>
                                        <td><h2>H Nizamuddin</h2></td>
                                        <td><h2> delhi to dubai</h2></td>
                                        <td><h2>5hrs</h2></td>
                                         <td><h2> 22.00p.m to 2.00a.m</h2></td>
                                          <td><h2> 8500</h2></td>
                                        
                                    </tr>
                                    <tr>
                                        <td> <h2> indian airlines</h2></td>
                                        <td><h2> 4563</h2></td>
                                        <td><h2> pondicherry to chennai</h2></td>
                                        <td><h2> 1 hrs </h2></td>
                                         <td><h2> 3.00p.m to 4.00p.m</h2></td>
                                          <td><h2> 2000</h2></td>
                                        
                                    </tr>
                               <tr>
                                   <td><h2>  dubai airlines</h2></td>
                                   <td><h2> 4578</h2></td>
                                   <td><h2> chennai to dubai</h2></td>
                                   <td><h2> 3 hrs</h2></td>
                                    <td><h2> 5.00a.m to 8.00a.m</h2></td>
                                     <td><h2> 4000</h2></td>
                               </tr>  
                                 <tr>
                                     <td><h2>  east star airlines </h2></td>
                                     <td><h2> 131226 </h2></td>
                                     <td><h2> chennai to srilanka </h2></td>
                                     <td><h2> 4 hrs </h2></td>
                                      <td><h2> 9.00a.m to 13.00p.m</h2></td>
                                       <td><h2> 16500</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  canadian north</h2></td>
                                     <td> <h2>8954</h2></td>
                                     <td><h2> chennai to canada </h2></td>
                                     <td><h2> 8 hrs </h2></td>
                                      <td><h2> 1.00a.m to 8.00a.m</h2></td>
                                       <td><h2> 17000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  firefly airlines</h2></td>
                                     <td><h2> 43657</h2></td>
                                     <td><h2> chennai to netherland</h2> </td>
                                     <td><h2> 6 hrs </h2></td>
                                      <td><h2> 3.00a.m to 9.00a.m</h2></td>
                                       <td><h2>20,000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  buddha air</h2></td>
                                     <td><h2> 6549 </h2></td>
                                     <td><h2> chennai to china</h2></td>
                                     <td><h2>  48 hrs</h3></td>
 <td><h2> 1.00p.m to 1.00a.m</h2></td>
  <td><h2> 18,000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  air india </h2></td>
                                     <td><h2> 1378</h2></td>
                                     <td><h2> chennai to dazzling</h2></td>
                                     <td><h2> 5 hrs</h2></td>
                                      <td><h2> 9.00a.m to 2.00p.m</h2></td>
                                       <td><h2> 15,000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  indigo airlines </h2></td>
                                     <td><h2> 5673 </h2></td>
                                     <td><h2> chennai to goa</h2></td>
                                     <td><h2> 4 hrs</h2></td>
                                         <td><h2> 6.00p.m to10.00p.m </h2></td>
                                          <td><h2> 9000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  spice jet</h2></td>
                                     <td><h2> 412345</h2></td>
                                     <td><h2> chennai to spain</h2></td>
                                     <td><h2>  8 hrs</h2></td>
                                      <td><h2> 10.00p.m to 18.00p.m</h2></td>
                                       <td><h2> 18,000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  freedom airlines</h2></td>
                                     <td><h2> 46755</h2></td>
                                     <td><h2> chennai to andamon</h2></td>
                                     <td> <h2>7 hrs </h2></td>
                                      <td><h2> 4.00a.m to 11.00p.m</h2></td>
                                       <td><h2> 9500</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  british airlines</h2></td>
                                     <td><h2> 3452</h2></td>
                                     <td><h2> chennai to america</h2></td>
                                     <td><h2> 48 hrs</h2></td>
                                      <td><h2> 2.00a.m to 2.00p.m</h2></td>
                                       <td><h2> 20,000</h2></td>
                               </tr>
                                 <tr>
                                     <td><h2>  jet airlines </h2></td>
                                     <td><h2> 5690</h2></td>
                                     <td><h2> pondicherry to banglore</h2></td>
                                     <td><h2> 2 hrs</h2></td>
                                      <td><h2> 10.00p.m to 12.00p.m</h2></td>
                                       <td><h2> 3500</h2></td>
                               </tr>
                                    </tbody>
                            </table>

                            
                                </tbody>
                         
                            </table>
                            <br><br><br>
                            <input type="Submit" value="Exit" />
                            
                            </center> 
            
            
        </form>
    </body>
</html>
