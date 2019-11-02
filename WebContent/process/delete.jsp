<%-- 
    Document   : delete.jsp
    Created on : Jan 9, 2017, 10:36:31 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Deleted</h1>
         <%
            
            dbconnection.dbcclass dbc=new dbconnection.dbcclass();
         
            String qry="delete from nominal_rolls where uid='"+request.getParameter("uid")+"'";
            if( dbc.putData(qry)>0)
           {
                out.println("deletion successfull..");
                response.sendRedirect("../Administrator/adminhome.jsp");
              
               
           }
           else
           {
               out.println("Deletion failed");
           }
        %>
   
    </body>
</html>
