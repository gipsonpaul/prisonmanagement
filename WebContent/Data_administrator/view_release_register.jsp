
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <jsp:useBean id="con" class="beanfiles.release_register"/>
    </head>
     <body bgcolor="gainsboro">
         <jsp:include page="DataHeader.jsp"></jsp:include>

        <center>
            <h2> <u>View Release Register </u></h2>
        <%
   
            String qry="select * from release_register";
             System.out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            %>
            <table border="1">
            <tr>
                <th>Name </th> 
                  <th>Dob</th> 
                   <th>Age</th> 
                    <th>Gender</th> 
                     <th>Address</th> 
                      <th>Contact</th> 
                       <th>Case No</th> 
                  <th> Case Type  </th>
                  <th>Punishment period</th>
                    <th>Release Date</th>
                
            </tr><%
            while(it.hasNext())
            {
                Vector v=(Vector)it.next();
            %>
    
         <form action="#" method="get">
             
       
        
            <tr>
                  <td>
                    <input type="text"  name="name"   value="<% out.println(v.get(0)); %>">
                </td>
                
                <td>
                    <input type="text"  name="dob"   value="<% out.println(v.get(1)); %>">
                </td>
            <td>
                    <input type="text"  name="age"   value="<% out.println(v.get(2)); %>">
                </td>
                <td>
                    <input type="text"  name="gender"   value="<% out.println(v.get(3)); %>">
                </td>
                <td>
                    <input type="text"  name="address"   value="<% out.println(v.get(4)); %>">
                </td>
            <td>
                    <input type="text"  name="contact"   value="<% out.println(v.get(5)); %>">
                </td>
                <td>
                    <input type="text"  name="caseno"   value="<% out.println(v.get(6)); %>">
                </td>
                
                <td>
                    <input type="text" name="casetype" value="<% out.println(v.get(7)); %>">
                </td>
           
            
               
                <td>
                    <input type="text"  name="punishmentperiod" value=" <% out.println(v.get(8)); %>">
                </td>
            
            
                
                <td>
                    <input type="text" name="releasedate" value="<% out.println(v.get(9)); %>">
                </td>
            
               
<!--                <td>

                        <a href="../process/update_prison.jsp?uid=<%=v.get(0)%>"><input type="button" value="Update"></a>
                        <input type="submit" value="Update"/>
                    
                        <a href="../process/delete_prison.jsp?uid=<%=v.get(0)%>"><input type="button" value="Delete"></a>

                    </td>-->
                </tr>  
 
        <% }
        %>
          </table>
          </form>
          
        <jsp:include page="DataFooter.jsp"></jsp:include>
         
       </center>
    </body>
</html>
