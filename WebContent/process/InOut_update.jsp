<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbcclass"%>
<html>
    <body style="background-color: #58adf7"></body>

<%
    dbconnection.dbcclass con=new dbcclass();
String id=request.getParameter("uid");
String str="select * from inout_register where uid='"+id+"'";
System.out.println(str);
Iterator itr=con.getData(str).iterator();
if(itr.hasNext()){
    Vector v=(Vector)itr.next();
    %>
    <center>
                <form action="../process/update.jsp">

    <table>
   
                 <tr> <th>Name </th> <td>
                        <input type="text"  name="name"   value="<% out.println(v.get(1)); %>"/>
                     </td></tr>
                 <tr> <th>Dob</th> <td>
                        <input type="text"  name="dob"   value="<% out.println(v.get(2)); %>">
                </td></tr>
                 <tr>  <th> Age  </th><td>
                        <input type="text" name="age" value="<% out.println(v.get(3)); %>">
                     </td></tr>
                 <tr>  <th>Address</th> <td>
                        <textarea name="address"> <% out.println(v.get(5)); %></textarea>
                     </td></tr>
                 <tr> <th>Contact</th><td>
                        <input type="text" name="contact" value="<% out.println(v.get(6)); %>">
                     </td></tr>
                 <tr><th>Case NO</th> <td>
                        <input type="text"  name="caseno" value=" <% out.println(v.get(7)); %>">
                     </td></tr>
                 <tr> <th>Case Type</th> <td>
                        <input type="text" name="casetype" value="<% out.println(v.get(8)); %>">
                     </td></tr>
                 <tr>  <th>Date of admission</th> <td>
                        <input type="text" name="admission_date" value="<% out.println(v.get(9)); %>">
                     </td></tr> 
                 <tr>  <th>Date of release</th><td>
                        <input type="text" name="release_date" value="<% out.println(v.get(10)); %>">
                    </td>

                
            </tr>
    
    </table>
                        </form>
    </center>
    
    <%
}

        

%>