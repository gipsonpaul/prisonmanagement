<%-- 
    Document   : case_register
    Created on : Jan 6, 2017, 3:49:58 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body bgcolor="gainsboro">
        <image src="../images/example3.jpg">
            <div align="left">
      
        <div id="content">
    <center>   <h1>CASE REGISTER</h1>
        <form action="../process/case_register.jsp" method="post">
            <table><tr><td> Name of prison</td><td><input type="text" required="" name="name" id="name"/></td></tr>
                <tr><td> Date of birth </td> <td> <input type="date"  required="" name="dob" id="dob" /></td></tr>
                  
                <tr> <td> Age </td> <td> <input type="text" name="age" required="" id="age"/></td></tr>
        <tr> <td>Gender</td>    <td><input type="radio" name="gender" value="male"/>male
                                  <input type="radio" name="gender" value="female"/>female</td></tr>
        <tr> <td> Address </td>  <td> <textarea name="address" required="" id="address"></textarea></td></tr>
        <tr><td> Contact </td> <td> <input type="text" required="" name="contact" id="contact"/></td></tr>
        <tr> <td> Case No </td><td> <input type="text" required="" name="caseno" id="caseno"/> </td></tr>
        <tr> <td> IPC Section </td><td> <input type="text" required="" name="ipc_section" id="ipc_section"/> </td></tr>
        <tr> <td> FIR No </td><td> <input type="text" required="" name="fir_no" id="fir_no"/> </td></tr>
        <tr> <td> Case Type </td><td> <input type="text" required="" name="casetype" id="casetype"/> </td></tr>
        <tr> <td> Date of Admission</td><td> <input type="text" required="" name="admission_date" id="admission_date"/> </td></tr>
        <tr> <td> Date of Release </td><td> <input type="text" required="" name="release_date" id="release_date"/> </td></tr>
      <tr> <td colspan="2" align="right"><input type="submit" value="Submit"/></td>  
     <td><input type="reset" value="clear"></td> 
      </tr>
        </form></center></div>
    </body>
</html>
