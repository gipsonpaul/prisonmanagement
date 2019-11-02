
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <jsp:useBean id="con" class="beanfiles.parole_register"/>
    </head>
   <body bgcolor="gainsboro">
        <image src="../images/header.jpg">
        <center>
            <h2> <u>View Parole Register </u></h2>
        <%
    String qry="select * from parole_register";
             System.out.println(qry);
            Iterator it=dbc.getData(qry).iterator();
            if(it.hasNext()){
                
            
           
            %>
            <table border="1">
            <tr>
                <th>Name </th> 
                  <th>Case No</th> 
                  <th> Case Type  </th>
                  <th>Parole Date</th>
                    <th>Entry Date</th>
                  <th>Update/Delete</th>
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
            
               
                <td>

                    <a href="../process/parole_update.jsp?uid=<%=v.get(0)%>"><input type="button" value="Update"></a>
                        <!--<input type="submit" value="Update"/>-->
                    
                        <a href="../process/delete_parole.jsp?uid=<%=v.get(0)%>"><input type="button" value="Delete"></a>

                    </td>
                </tr>  
 
        <% }
            }else{
                %>
                <h2 style="color: red"><i>No Data Found</i></h2>
                <%
            }
        %>
          </table>
            <div align="center">
            <image src="../upload/2.gif">
        </div>
          </form>
       </center>
    </body>
</html>
