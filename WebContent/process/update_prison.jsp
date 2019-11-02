<%-- 
    Document   : update_prison
    Created on : Jan 11, 2017, 12:05:47 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="user" class="beanfiles.case_register"/>
         <jsp:setProperty name="user" property="*"/>

    </head>
    <body>
        
        <h4>Update</h4>
           <%
    if(user.putData(1)>0){
        %>
        <script>
            alert("Updation successfull..");
            window.location="../Administrator/adminhome.jsp";
        </script>
        <%
    }else{
        %>
        <script>
            alert("Updation failed..");
            window.location="../Administrator/view_parole_register.jsp";
        </script>
        <%
    }
%>
    </body>
</html>
