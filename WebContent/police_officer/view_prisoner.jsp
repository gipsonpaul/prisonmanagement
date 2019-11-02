

<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <jsp:useBean id="con" class="beanfiles.nominal_rolls"/>
    </head>
   <body bgcolor="gainsboro">
        <image src="../images/prisonerdetails.jpg">

    <center>
        <h2> <u>View Prisoners </u></h2>
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
                
            </tr><%
                Iterator it=con.getData(2).iterator();
            while(it.hasNext())
            {
                Vector v=(Vector)it.next();
            %>

            <form action="view_prisoner.jsp" method="post">



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
                        <input type="text" name="admission" value="<% out.println(v.get(9)); %>">
                    </td>
                    <td>
                        <input type="text" name="release" value="<% out.println(v.get(10)); %>">
                    </td>


                </tr>  

                <% }
                %>
       
    </form>
                 </table>
        <div align="center">
            <image src="../upload/2.gif">
        </div>    
</center>
</body>
</html>
