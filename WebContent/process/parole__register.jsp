

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
    
    <jsp:useBean id="reg" class="beanfiles.parole_register"/>
    <jsp:setProperty name="reg" property="*"/>
    </head>
    <body>
        
        <%
           
            String qry="insert into parole_register(name,caseno,casetype,paroledate,entrydate) values('"+reg.getName()+"',"+reg.getCaseno()+",'"+reg.getCasetype()+"','"+reg.getParoledate()+"','"+reg.getEntrydate()+"')";
                       out.println(qry);
          
                   if(dbc.putData(qry)>0)
                               {
             
                       response.sendRedirect("../Administrator/adminhome.jsp");
                
            }
            else
                               {
                out.println("Error");
                
            }
            
            %>
    
    </body>
</html>
