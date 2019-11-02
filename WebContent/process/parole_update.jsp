<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbcclass"%>
<html>
    <body style="background-color: #58adf7">
    <center>
    <h2><i><u>PAROLE REGISTER</u></i></h2>

<%
    dbconnection.dbcclass con=new dbcclass();
String id=request.getParameter("uid");
String str="select * from parole_register where uid='"+id+"'";
System.out.println(str);
Iterator itr=con.getData(str).iterator();
if(itr.hasNext()){
    Vector v=(Vector)itr.next();
    %>
    <center>
        <form action="../process/UpdateParoleRegister.jsp">

    <table>
        <td>
            <input type="text"  name="uid"   value="<% out.println(v.get(0)); %>"hidden="" />
                     </td></tr>
   
                 <tr> <th>Name </th> <td>
                        <input type="text"  name="name"   value="<% out.println(v.get(1)); %>"/>
                     </td></tr>
                 <tr> <th>Case Number</th> <td>
                        <input type="text"  name="caseno"   value="<% out.println(v.get(2)); %>">
                </td></tr>
                 <tr>  <th> Case Type  </th><td>
                        <input type="text" name="casetype" value="<% out.println(v.get(3)); %>">
                     </td></tr>
                 <tr>  <th>Parole Date</th> <td>
                        <textarea name="paroledate"> <% out.println(v.get(4)); %></textarea>
                     </td></tr>
                 <tr> <th>Entry Date</th><td>
                        <input type="text" name="entrydate" value="<% out.println(v.get(5)); %>">
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