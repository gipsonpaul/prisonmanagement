<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbcclass"%>
<html>
    <body style="background-color: #58adf7">
    <center>
    <h2><i><u>DATA ADMINISTRATOR</u></i></h2>

<%
    dbconnection.dbcclass con=new dbcclass();
String id=request.getParameter("uid");
String str="select * from dataadmin_register where uid='"+id+"'";
System.out.println(str);
Iterator itr=con.getData(str).iterator();
if(itr.hasNext()){
    Vector v=(Vector)itr.next();
    %>
    <center>
        <form action="../process/update_DataAdmin.jsp">

    <table>
        <td>
            <input type="text"  name="uid"   value="<% out.println(v.get(0)); %>"hidden="" />
                     </td></tr>
   
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
                 <tr><td colspan="5" align="right"><input type="submit" value="UPDATE"/></td></tr>
    
    </table>
                        </form>
    </center>
    
    <%
}

        

%>
    </center>
</body>