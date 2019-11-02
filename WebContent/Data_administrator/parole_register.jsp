<%-- 
    Document   : parole_register
    Created on : Jan 6, 2017, 4:04:54 PM
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
        <image src="../images/header.jpg">
        <div id="content">
            <center> <h1>PAROLE REGISTER</h1>
                <form action="../process/parole__register.jsp" method="post">
                    <table>
                        <tr> <td> Name of Prisoner </td><td><input type="text" required="" name="name" id="name"/></td></tr>
                        <tr> <td> Case No </td><td><input type="text" required="" name="caseno" id="caseno"/></td></tr>
                        <tr> <td> Case Type </td><td><input type="text" required="" name="casetype" id="casetype"/></td></tr>
                        <tr> <td> Parole date </td><td><input type="date" required="" name="paroledate" id="paroledate"/></td></tr>
                        <tr> <td> Entry date </td><td><input type="date" required="" name="entrydate" id="entrydate"/></td></tr>
                         <tr> <td colspan="2" align="right"><input type="submit" value="Submit"/></td>  
     <td><input type="reset" value="clear"></td> 
      </tr>
                    </table>
                </form>
                
        </div>
            </center></div>
    </body>
</html>
<jsp:include page="DataFooter.jsp"></jsp:include>