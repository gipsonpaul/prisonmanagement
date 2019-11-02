
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
            <h2><u>View Parole Register </u></h2>
        <%
   
            String qry="select * from parole_register";
             System.out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            %>
            <table border="1">
            <tr>
                <th>Name </th> 
                  <th>Case No</th> 
                  <th> Case Type  </th>
                  <th>Parole Date</th>
                    <th>Entry Date</th>
                 
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
                    <input type="text"  name="caseno"   value="<% out.println(v.get(2)); %>">
                </td>
            
            
                
                <td>
                    <input type="text" name="casetype" value="<% out.println(v.get(3)); %>">
                </td>
           
            
               
                <td>
                    <input type="text"  name="paroledate" value=" <% out.println(v.get(4)); %>">
                </td>
            
            
                
                <td>
                    <input type="text" name="entrydate" value="<% out.println(v.get(5)); %>">
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
        <jsp:include page="DataFooter.jsp"></jsp:include>
        </div>
       </center>
    </body>
</html>
