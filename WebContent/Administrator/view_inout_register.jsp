

<%@page import="dbconnection.dbcclass"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <%--<jsp:useBean id="con" class="beanfiles.nominal_rolls"/>--%>
    </head>  
       <body bgcolor="gainsboro">
        <image src="../images/example3.jpg">
      
<div align="left">
    <center>
        <h2> <u>View InOut Register </u></h2>
           <!--<form action="../process/update.jsp" method="get">-->
           <%
                dbconnection.dbcclass con=new dbcclass();
                String str="select * from inout_register";
Iterator itr=con.getData(str).iterator();
if(itr.hasNext()){
    %>
        <table border="1">
            <tr>
                <th>Name </th> 
                <th>Dob</th> 
                <th> Age  </th>
                <th>Address</th>
                <th>Contact</th>
                <th>Case NO</th>
                <th>Case Type</th>
                <th>Date of admission</th>
                <th>Date of release</th>
<!--              //  <th>photo</th>-->
                
            </tr>
            <%
        while(itr.hasNext())
            {
                Vector v=(Vector)itr.next();
            %>

            <!--<form action="#" method="post">-->


<tr><td><input type="text" name="uid" value="<%=v.get(0)%>" hidden></td></tr>

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
                        <textarea name="address"> <% out.println(v.get(5)); %></textarea>
                    </td>
                    <td>
                        <input type="text" name="contact" value="<% out.println(v.get(6)); %>">
                    </td>

                    <td>
                        <input type="text"  name="caseno" value=" <% out.println(v.get(7)); %>">
                    </td>

                    <td>
                        <input type="text" name="casetype" value="<% out.println(v.get(8)); %>">
                    </td>

                    <td>
                        <input type="text" name="admission_date" value="<% out.println(v.get(9)); %>">
                    </td>
                    <td>
                        <input type="text" name="release_date" value="<% out.println(v.get(10)); %>">
                    </td>


                    <td>

                        <a href="../process/InOut_update.jsp?uid=<%=v.get(0)%>"><input type="submit" value="Update"></a>
                        <!--<input type="submit" value="Update"/>-->
                    </td>
                    <td>
                        <a href="../process/delete.jsp?uid=<%=v.get(0)%>"><input type="submit" value="Delete"></a>

                    </td>
                </tr> 
                

                <% }
}else{
                %>
            
                <h4>No data Found</h4>
       
<%
}
%>
                 </table>    </form>
    </center></div>
                  <image src="../images/jailback1.jpg"/>
</body>
</html>
