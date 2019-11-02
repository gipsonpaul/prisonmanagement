<%-- 
    Document   : registration_data_admin
    Created on : Jan 5, 2017, 5:18:17 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <jsp:include page="DataHeader.jsp"></jsp:include>
       <body bgcolor="gainsboro">
           <h3 style="color: red"><span>DATA ADMIN </span> REGISTRATION</h3>
         
        
        <form action="../process/data_admin_register.jsp" method="post">
        <table>
            <tr>  <td> Name</td> <td><input type="text" name="name" id="name" required=""/></td></tr>
         <tr>
                   <td>
                       Date of birth:
                       </td>
                  <td>
                    <select name="dd">
                        <%
                        for(int i=1;i<32;i++)
                            out.println("<option>"+i+"</option>");
                        %>
                    </select>
               
                    
                    <select name="mm">
                            <%
                            for(int i=1;i<13;i++)
                                out.println("<option>"+i+"</option>");
                            %>
                        </select>
                   
                   
                        <select name="yy">
                            <%
                            for(int i=1900;i<2020;i++)
                                out.println("<option>"+i+"</option>");
                            %>
                        </select>
                    </td> 
               </tr>
               <tr> <td> Age </td> <td> <input type="text" name="age" id="age" required=""/></td></tr>
        <tr> <td>Gender</td>    <td><input type="radio" name="gender" value="male"/>male
                                  <input type="radio" name="gender" value="female"/>female</td></tr>
        <tr> <td> Address </td>  <td> <textarea name="address" id="address" required=""></textarea></td></tr>
        <tr><td> Contact </td> <td> <input type="text" name="contact" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits" id="contact" required=""/></td></tr>
        <tr> <td> Username </td><td> <input type="text" name="username" id="username" required=""/> </td></tr>
        <tr> <td> Password </td><td> <input type="password" name="password" id="password" required=""/> </td></tr>
        <tr> <td colspan="2" align="right"><input type="submit" value="Register" style="color: white;background-color: green"/></td>  
            <td><input type="reset" value="clear" style="background-color: red;color: white"></td> 
      </tr>
        </table>
    </form>
                          <!--<image src="../images/jailback1.jpg">--> 
        </center>
        </div>
    </body>
</html>
<jsp:include page="DataFooter.jsp"></jsp:include>