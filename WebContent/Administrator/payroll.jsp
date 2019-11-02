<%-- 
    Document   : payroll
    Created on : Jan 27, 2017, 5:40:13 PM
    Author     : admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
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
    <center>
       
        <h1><u>PAYROLL MANAGEMENT</u></h1>
        <form action="../process/payroll.jsp" method="post">
        <table> 
            <tr><td>Name</td><td> 
                    <select name="prsn">
                        <%
                            String str="SELECT * FROM `nominal_rolls`";
                            dbconnection.dbcclass dcon=new dbconnection.dbcclass();
                            Iterator itr=dcon.getData(str).iterator();
                            while(itr.hasNext()){
                            Vector v=(Vector)itr.next();
                            
                            
                            
                            
                            %>
                            <option value="<%=v.get(0)%>"><%=v.get(1)%></option>
                            <%
                                }
                                %>
                    </select>
         
                </td></tr>
     <tr><td>Date</td><td> <input type="text" value="<%
                                         String pattern = "yyyy-MM-dd";
SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

String date = simpleDateFormat.format(new Date());
out.println(date);
                                         %>" 
                                         name="dates"/></td></tr> 
     <tr><td>Amount</td><td> <input type="text" name="amount"/></td></tr>
                  <tr><td>Work Type:</td>
<!--                  <tr><td> <input type="checkbox" name="work_type" value="inside_work">Inside Work</td</tr>
                  <tr><td> <input type="checkbox" name="work_type" value="outside_work">Outside Work</td></tr>-->
<!--<td> <select name="work">
                            <option value="Inside_work" selected>Inside Work</option>
    				<option value="Outside_work">Outside Work</option>
    				
    							   				
    </select></td></tr>-->
<td><input type="radio" name="work" id="work">Inside Work</td>
<td><input type="radio" name="work" id="work">Outside Work</td></tr>

                     
           <tr><td colspan="2" align="right"><input type="submit" value="OK"></td>
               <td> <input type="submit" value="clear"></td></tr>
          </form>
        
        </table>
    </center> 
           <image src="../images/jailback1.jpg"/>
    </body>
</html>
