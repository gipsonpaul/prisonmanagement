
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
       <jsp:include page="DataHeader.jsp"></jsp:include>
        <center>
            <h2>View Profile/Police</h2>
        <%
   
            String qry="select * from police_register";
             System.out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            %>
            <table border="1">
            <tr>
                <th>Name </th> 
                  <th>Dob</th> 
                  <th> Age  </th>
                  <th>Email</th>
                    <th>Post</th>
                 <th>Contact </th>
                  <th>Address</th>
            </tr><%
            while(it.hasNext())
            {
                Vector v=(Vector)it.next();
            %>
    
         <form action="#" method="get">
             
       
        
            <tr>
                  <td>
                    <input type="text"  name="name"   value="<% out.println(v.get(1)); %>">
                </td>
                
                <td>
                    <input type="text"  name="dob"   value="<% out.println(v.get(2)); %>">
                </td>
            
            
                
                <td>
                    <input type="text" name="age" value="<% out.println(v.get(3)); %>">
                </td>
           
            
               
                <td>
                    <input type="email"  name="email" value=" <% out.println(v.get(5)); %>">
                </td>
            
            
                
                <td>
                    <input type="text" name="post" value="<% out.println(v.get(7)); %>">
                </td>
            
               
                <td>
                    <input type="text" name="contact" value="<% out.println(v.get(8)); %>">
                </td>
                            <td>
                    <textarea name="address"> <% out.println(v.get(9)); %></textarea>
                </td>
<!--                <td>
                   <input type="submit" value="Update"/>
                </td>-->
<!--                <td>
                   <input type="submit" value="Delete"/>
                </td>-->
            </tr>  
 
        <% }
        %>
          </table>
          </form>
                          <div align="top_left">
            <image src="../images/police.jpg">
        </div>      
       </center>
    </body>
</html>
