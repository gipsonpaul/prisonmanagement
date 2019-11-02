

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
    
    <jsp:useBean id="reg" class="beanfiles.release_register"/>
    <jsp:setProperty name="reg" property="*"/>
    </head>
    <body>
        
        <%
           
            String qry="insert into release_register(name,dob,age,gender,address,contact,caseno,casetype,punishmentperiod,release_date) values('"+reg.getName()+"','"+reg.getDob()+"',"+reg.getAge()+",'"+reg.getGender()+"','"+reg.getAddress()+"','"+reg.getContact()+"',"+reg.getCaseno()+",'"+reg.getCasetype()+"','"+reg.getPunishmentperiod()+"','"+reg.getRelease_date()+"')";
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
