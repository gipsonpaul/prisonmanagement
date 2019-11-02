<html>
    <head></head>
 <body bgcolor="gainsboro">
        <image src="../images/header.jpg">
        <div id="response">
            <center>   <h1><u>IN OUT REGISTER</u></h1>
        <form action="../process/inout_register.jsp" method="post">
            <table>
                <tr><td> Name of prisoner</td><td><input type="text" name="name" required="" id="name"/></td></tr>
                <tr><td> Age</td><td><input type="text" name="age" required="" id="age"/></td></tr>
                <tr> <td> Contact</td><td> <input type="text" required="" name="contact" id="contact"/> </td></tr>
                <tr> <td> Address </td><td> <textarea name="address" required="" id="address"></textarea> </td></tr>
                <tr><td> Case Type </td> <td> <input type="text" required="" name="casetype" id="casetype" /></td></tr>
                <tr> <td> Case No </td> <td> <input type="text" required="" name="caseno" id="caseno"/></td></tr>
                <tr> <td> Reason</td><td> <input type="text" required="" name="reason" id="reason"/> </td></tr>
                <tr> <td> Date </td>  <td> <input type="date"required="" name="date" id="date"></td></tr>
                <tr> <td> Exit time </td><td> <input type="time" required="" name="exit_time" id="exit_time"/> </td></tr>
                <tr><td>Entry time </td><td> <input type="time" required="" name="entry_time" id="entry_time"/></td></tr>
                        <!--<tr> <td> Status</td><td> <input type="text" name="status" id="status"/> </td></tr>-->

       <tr> <td colspan="2" align="right"><input type="submit" value="Submit"/></td>  
     <td><input type="reset" value="clear"></td> 
       </tr></table>
        </form>
<!--                <image src="../images/Jail.jpg"/>-->
            </center></div>
   
