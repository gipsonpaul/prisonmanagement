<%-- 
    Document   : in_out_register
    Created on : Jan 6, 2017, 11:17:31 PM
    Author     : admin
--%>

<%@page import="dbconnection.dbcclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    </head>
    <body>
         <body>
        
        <%
            String PRNAME=request.getParameter("prname");
            String date=request.getParameter("date");
            String entry_time=request.getParameter("entry_time");
            String exit_time=request.getParameter("exit_time");
            String visitor_name=request.getParameter("visitor_name");
            String address=request.getParameter("address");
            String contact=request.getParameter("contact");
            dbconnection.dbcclass dbc=new dbcclass();
           
            String qry="insert into interview_request(pid,date,entry_time,exit_time,visitor_name,address,contact,status) values('"+PRNAME+"','"+date+"','"+entry_time+"','"+exit_time+"','"+visitor_name+"','"+address+"','"+contact+"','Not Accepted')";
                       out.println(qry);
          
                   if(dbc.putData(qry)>0)
                               {
                                   %>
                                   <script>
                                       
                                   alert("Request Added");
             
                       window.location="../Data_administrator/DataHome.jsp";
                                          </script>
                                          <%
                
            }
            else
                               {
                                   %>
                                   <script>
                                       alert("Failed");
                                       window.location="../Data_administrator/interview_request.jsp";
                                                  </script>
                                                  <%
            }
            
            %>
    
    </body>
</html>
    </body>
</html>
