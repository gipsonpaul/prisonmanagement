<%-- 
    Document   : release_register
    Created on : Jan 6, 2017, 2:22:00 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="../images/old-jail-museum_1.jpg">
     
        <div id="content" style="background:whitesmoke;size: 500px;align-self: center">
             <center>   <h1><u>RELEASE REGISTER</u></h1>
 <form action="../process/release_register.jsp" method="post">
        <table>
            <tr>  <td> Name of Prisoner</td> <td><input type="text" name="name" id="name" required=""/></td></tr>
            <tr><td> Date of birth </td> <td> <input type="date" name="dob" id="dob" required=""/></td></tr>
                  
            <tr> <td> Age </td> <td> <input type="text" name="age" id="age" required=""/></td></tr>
        <tr> <td>Gender</td>    <td><input type="radio" name="gender" value="male"/>male
                                  <input type="radio" name="gender" value="female"/>female</td></tr>
        <tr> <td> Address </td>  <td> <textarea name="address" id="address" required=""></textarea></td></tr>
        <tr><td> Contact </td> <td> <input type="text" name="contact" id="contact" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits" required=""/></td></tr>
        <tr> <td> Case No </td><td> <input type="text" name="caseno" id="caseno" required=""/> </td></tr>
        <tr> <td> Case Type </td><td> <input type="text" name="casetype" id="casetype" required=""/> </td></tr>
        <tr> <td> Punishment Period</td><td> <input type="text" name="punishmentperiod" id="punishmentperiod" required=""/> </td></tr>
        <tr> <td> Date of Release </td><td> <input type="date" name="release_date" id="release_date" required=""/> </td></tr>
      <tr> <td colspan="2" align="right"><input type="submit" value="Submit"/></td>  
     <td><input type="reset" value="clear"></td> 
      </tr>
        </table>
    </form> 
        </center>
       </div>
    </body>
</html>

  