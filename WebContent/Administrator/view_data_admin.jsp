
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
       
    </head>
    <body bgcolor="gainsboro">
        <image src="../images/example3.jpg">  
    <center>
        <%
   
            String qry="select * from dataadmin_register";
             System.out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            if(it.hasNext()){
            %>
            <div align="left"style="background:slategray;size: 300px;align-self: center">
                <h2><u>View Profile/Data Administrator </u></h2>
        
            <table border="1">
            <tr>
                <th>Name </th> 
                  <th>Dob</th> 
                  <th> Age  </th>
                    <th>Address</th>
                 <th>Contact </th>
                  <th>Update/Delete </th>
                  
            </tr><%
            while(it.hasNext())
            {
                Vector v=(Vector)it.next();
            %>
    
         <!--<form action="#" method="get">-->
             
       
        
            <tr>
                  <td>
                    <input type="text"  name="name"   value="<% out.println(v.get(1)); %>">
                </td>
                
                <td>
                    <input type="text"  name="dob"   value ="<% out.println(v.get(2)); %>">
                 </td>
            
            
                
                <td>
                    <input type="text" name="age" value="<% out.println(v.get(3)); %>">
                </td>
                 <td>
                    <textarea name="address"> <% out.println(v.get(5)); %></textarea>
                </td>
                <td>
                    <input type="text" name="contact" value="<% out.println(v.get(6)); %>">
                </td>
                <td>
                    <a href="../process/dataAdminUpdate.jsp?uid=<%=v.get(0)%>" > <input type="submit" value="Update"/></a>
                </td>
                <td>
                    <a href="../process/delete_dataAdmin.jsp?uid=<%=v.get(0)%>">  <input type="submit" value="Delete"/></a>
                </td>
            </tr>  
 
        <% }
            }
            else{
                %>
                <h3 style="color: red"><i>No Data Found</i></h3>
                <%
            }
        %>
            </table></div></center>
          </form>
      
             <image src="../images/jailback1.jpg"> 
    </body>
</html>
