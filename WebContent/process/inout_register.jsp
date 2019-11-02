

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
    
    <jsp:useBean id="reg" class="beanfiles.inout_register"/>
    <jsp:setProperty name="reg" property="*"/>
    </head>
    <body>
        
        <%
           
            String qry="insert into inout_register(name,age,contact,address,casetype,caseno,reason,date,exit_time,entry_time) values('"+reg.getName()+"','"+reg.getAge()+"','"+reg.getContact()+"','"+reg.getAddress()+"','"+reg.getCasetype()+"',"+reg.getCaseno()+",'"+reg.getReason()+"',"+reg.getDate()+"','"+reg.getExit_time()+"',"+reg.getEntry_time()+"')";
                       out.println(qry);
          
                   if(dbc.putData(qry)>0)
                               {
             
                       response.sendRedirect("../Data_administrator/data_admin_home.jsp");
                
            }
            else
                               {
                out.println("Error");
                
            }
            
            %>
    
    </body>
</html>
