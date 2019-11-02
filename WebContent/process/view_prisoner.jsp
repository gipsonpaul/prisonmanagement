<%-- 
    Document   : view_prisoner
    Created on : Jan 10, 2017, 12:06:02 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
    
    <jsp:useBean id="view" class="beanfiles.nominal_rolls"/>
    <jsp:setProperty name="view" property="*"/>
    
    </head>
    <body>
        <%
    if(view.putData(1)>0){
        %>
        <script>
            alert("Updation successfull..");
            window.location="../Administartor/adminhome.jsp";
        </script>
        <%
    }else{
        %>
        <script>
            alert("Updation failed..");
            window.location="../Administartor/view_prisoner.jsp";
        </script>
        <%
    }
%>
       
    </body>
</html>
