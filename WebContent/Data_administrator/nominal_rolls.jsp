<%-- 
    Document   : nominal_rolls
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
    <body bgcolor="gainsboro"> 
        <jsp:include page="DataHeader.jsp"></jsp:include>
          <center>
            <h1><u>PRISONERS DETAILS</u></h1>
                <form action="../process/nominal_rolls.jsp" method="post">
                    <table class="table table-bordered">
                        <tr>  <td> Name of Prisoner</td> <td><input type="text" name="name" required="" id="name"/></td></tr>
                        <tr><td> Date of birth </td> <td> <input type="date" name="dob" required="" id="dob" /></td></tr>

                        <tr> <td> Age </td> <td> <input type="text" name="age" id="age" required=""/></td></tr>
                        <tr> <td>Gender</td>    <td><input type="radio" name="gender" value="male"/>male
                                <input type="radio" name="gender" value="female"/>female</td></tr>
                        <tr> <td> Address </td>  <td> <textarea name="address" required="" id="address"></textarea></td></tr>
                        <tr><td> Contact </td> <td> <input type="text" name="contact" required="" id="contact"/></td></tr>
                        <tr> <td> Case No </td><td> <input type="text" name="caseno" required="" id="caseno"/> </td></tr>
                        <tr> <td> Case Type </td><td> <input type="text" name="casetype" required="" id="casetype"/> </td></tr>
                        <tr> <td> Date of Admission</td><td> <input type="date" required="" name="admission_date" id="admission_date"/> </td></tr>
                        
                        <tr> <td> Date of Release </td><td> <input type="date" required="" name="release_date" id="release_date"/> </td></tr>
                        <!--<tr><td>Upload Photo</td><td><input type="file" name="image"></td></tr>-->
                      
                        <tr> <td colspan="2" align="right"><input type="submit" value="Upload Photo"/></td>  
                            <td><input type="reset" value="clear"></td> 
                        </tr>
                    </table>
                </form>     
                <div align="top_left">
            <!--<image src="../upload/2.gif">-->
        </div>      

            </center>
        </div>
    </body>
</html>
<jsp:include page="DataFooter.jsp"></jsp:include>

