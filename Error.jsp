<%-- 
    Document   : OTP
    Created on : Jan 26, 2019, 12:25:47 AM
    Author     : Anju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="myform" method="post" action="OTP">
    <input type="hidden" name="length" value="10">
    <table width="100%" border="0">
        <tr>A
            <td width="120">Username:</td>
            <td>
                <input name="update_username" type="text" value="" size="40">
            </td>
        </tr>
        <tr>
            <td>OTP</td>
            <td>
                <input name="row_password" type="text" size="40">&nbsp;
                <input type="button" class="button" value="Generate" onClick="generate();" tabindex="2">
            </td>
        </tr>
    </table></form>
        <script>
            function randomPassword(length) {
    var chars = "abcdefghijklmnopqrstuvwxyz1234567890";
    var pass = "";
    for (var x = 0; x < length; x++) {
        var i = Math.floor(Math.random() * chars.length);
        pass += chars.charAt(i);
    }
    return pass;
}

function generate() {
    myform.row_password.value = randomPassword(myform.length.value);
}
</script>
    </body>
</html>
