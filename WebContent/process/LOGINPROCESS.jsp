<%-- 
    Document   : LOGINPROCESS
    Created on : Jan 6, 2017, 10:01:08 AM
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
         <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <jsp:useBean id="log" class="beanfiles.login"/>
        <jsp:setProperty name="log" property="*"/>
    </head>
    <body>
        <%
//            System.out.println("login processss");
            String user="user";
            String qry="select * from userlogin where username='"+log.getUsername()+"'and password='"+log.getPassword()+"'";
            System.out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            if(it.hasNext())
                    {
                        Vector v=(Vector)it.next();
                         System.out.println(v.get(3));
                        if(v.get(0).toString().equals(log.getUsername())&&v.get(1).toString().equals(log.getPassword()))
                        {
                            if(v.get(3).toString().equals("admin"))  {                          
                            session.setAttribute("username", v.get(0).toString());
                            session.setAttribute("uid", v.get(2).toString());
                             System.out.println("admin");
                            response.sendRedirect("../Administrator/adminhome.jsp");
                                                       }
                            else  if(v.get(3).toString().equals("data_admin"))
                            {
                                System.out.println("data_admin");
                                response.sendRedirect("../Data_administrator/DataHome.jsp");
                            }
                            else  if(v.get(3).toString().equals("police"))
                            {
                                System.out.println("police");
                                response.sendRedirect("../police_officer/police_home.jsp");
                        }
                        else
                        {
                            out.println("error");
                        }
                    }
                    }else{
                %>
                <script>
                    alert("Plase Check!! Invalid Username Or Password..");
                    window.location="../Administrator/Home.jsp";
                    
                </script>
                <%
            }
            %>
      
        
    </body>
</html>
