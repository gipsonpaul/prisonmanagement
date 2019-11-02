<%-- 
    Document   : tempVis
    Created on : Feb 16, 2017, 11:24:21 AM
    Author     : admin
--%>

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
    
        <image src="images/example3.jpg">
      
<div align="left">
    <a href="Administrator/paycalc.jsp">Back</a>
            <center>

        <table cellspacing="40">
<tr><th>Name</th><th>Amount</th><th><tr>                
        <% 
        String id=request.getParameter("id");
        String str="SELECT * FROM `payroll`,`nominal_rolls` WHERE `nominal_rolls`.`prsn_id`=`payroll`.`prsn` AND `payroll`.`prsn`='"+id+"'";
        dbconnection.dbcclass con=new dbconnection.dbcclass();
        int amount=0;
Iterator itr=con.getData(str).iterator();
while(itr.hasNext())
{
 Vector v=(Vector)itr.next();
 %>
    <tr><td><%=v.get(6)%></td><td><%=v.get(3)%></td></tr>
    <%
        amount=amount+Integer.parseInt(v.get(3).toString());
        }
        %>
        <tr><th>Total</th><td><%=amount%><td></tr>
                
                
        </table>
        <image src="images/prison.jpg"/>

            </center>
        </div>
    </body>
</html>
