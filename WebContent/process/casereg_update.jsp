<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbcclass"%>
<%
    dbconnection.dbcclass con = new dbcclass();
    String id = request.getParameter("uid");
    String str = "select * from case_register where uid='" + id + "'";
    System.out.println(str);
    Iterator itr = con.getData(str).iterator();
    if (itr.hasNext()) {
        Vector v = (Vector) itr.next();
%>
    <center>
<form action="../process/update_case.jsp">
    <table>
    
            <h2><i><u>CASE REGISTER</u></i></h2>
        <tr><th>  Name </th> <td>
                <input type="text"  name="name1"   value="<%=v.get(1)%>">
            </td></tr><br>
        <td>
            <input type="text" name="uid" value="<%=v.get(0)%>" hidden></td></tr>
        <tr>         <th> Dob </th>  <td>
                <input type="text"  name="dob"   value="<% out.println(v.get(2)); %>">
            </td></tr><br>
        <tr>  <th> Age  </th> <td>
                <input type="text" name="age" value="<% out.println(v.get(3)); %>">
            </td></tr><br>
        <tr>   <th>Address&nbsp;&nbsp;</th><td>
                <textarea name="address"> <% out.println(v.get(5)); %></textarea>
            </td></tr>
        <tr> <th>Contact</th> <td>
                <input type="text" name="contact" value="<% out.println(v.get(6)); %>">
            </td></tr>
        <tr> <th>Case NO</th><td>
                <input type="text"  name="caseno" value=" <% out.println(v.get(7)); %>">
            </td></tr>
        <tr> <th>IPC scetion</th> <td>
                <input type="text"  name="ipc_section" value=" <% out.println(v.get(8)); %>">
            </td></tr>
        <tr> <th>FIR NO</th><td>
                <input type="text"  name="fir_no" value=" <% out.println(v.get(9)); %>">
            </td></tr>
        <tr> <th>Case Type</th> <th>
                <input type="text" name="casetype" value="<% out.println(v.get(10)); %>">
            </td></tr>
        <tr>  <th>Date of admission &nbsp;&nbsp;</th> <td>
                <input type="text" name="admission_date" value="<% out.println(v.get(11)); %>">
            </td></tr>

        <tr>  <th>Date of release &nbsp;&nbsp;</th><td>
                <input type="text" name="release_date" value="<% out.println(v.get(12)); %>">
            </td></tr>
        <tr><td colspan="5" align="right"><input type="submit" value="UPDATE"/></td></tr>

    </table>
</form>
                        </center>
<%
    }

%>
