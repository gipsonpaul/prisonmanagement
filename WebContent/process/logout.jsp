
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                 <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <jsp:useBean id="log" class="beanfiles.login"/>
        <jsp:setProperty name="log" property="*"/>

    </head>
    <body>
        <h5>logout</h5>
         <%
            System.out.println("login processss");
            String user="user";
            String qry="select * from userlogin where username='"+log.getUsername()+"'";
            out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            while(it.hasNext())
                    {
                        Vector v=(Vector)it.next();
                        out.println(v);
                        if(v.get(0).toString().equals(log.getUsername())&&v.get(1).toString().equals(log.getPassword()))
                        {
                            if(v.get(3).toString().equals("user")){
                            session.setAttribute(" ", v.get(0).toString());
                           // session.setAttribute(" ", v.get(1).toString());
                         //  response.sendRedirect("../Home.jsp");
                            }
                        }
                    }
            %>
    </body>
</html>
