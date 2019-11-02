

<%@page import="dbconnection.dbcclass"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%--<jsp:useBean id="dbc" class="dbconnection.dbcclass"/>--%>
        <jsp:useBean id="con" class="beanfiles.interview_request"/>
    </head>
     <body bgcolor="gainsboro">
        <image src="../images/visitordetails.jpg">

     <center>
        <h2> <u>View Interview Request </u></h2>
        <%
//            dbconnection.dbcclass dbc=new dbcclass();
//        String str1="select * from nominal_rolls";
//        System.out.println(str1);
//        Iterator itr1=dbc.getData(str1).iterator();
//        while(itr1.hasNext()){
//            Vector vv=(Vector)itr1.next();
       
                            Iterator it=con.getData(1).iterator();
                            if(it.hasNext()){
                            %>

        <table border="1">
            <tr>
                <th>Prisoner ID </th> 
<!--                <th>Case Type</th> 
                <th> Case No  </th>-->
                <th>Date</th>
                <th>Entry Time</th>
                <th>Exit Time</th>
                <th>Visitor's name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Status</th>
<!--              //  <th>photo</th>-->
                
            </tr><%
            while(it.hasNext())
            {
                Vector v=(Vector)it.next();
            %>

            <form action="view_interview_request.jsp" method="post">



                <tr>
                    <td>
                        <input type="text"  name="name"   value="<% out.println(v.get(1)); %>">
                    </td>

<!--                    <td>
                        <input type="text"  name="casetype"   value="<% out.println(v.get(1)); %>">
                    </td>



                    <td>
                        <input type="text" name="caseno" value="<% out.println(v.get(2)); %>">
                    </td>-->

                    <td>
                        <textarea name="date"> <% out.println(v.get(2)); %></textarea>
                    </td>
                    <td>
                        <input type="text" name="entry_time" value="<% out.println(v.get(3)); %>">
                    </td>

                    <td>
                        <input type="text"  name="exit_time" value=" <% out.println(v.get(4)); %>">
                    </td>

                    <td>
                        <input type="text" name="visitor_name" value="<% out.println(v.get(5)); %>">
                    </td>

                    <td>
                        <input type="text" name="address" value="<% out.println(v.get(6)); %>">
                    </td>
                    <td>
                        <input type="text" name="contact" value="<% out.println(v.get(7)); %>">
                    </td>
                    <td>
                        <input type="text" name="status" value="<% out.println(v.get(8)); %>">
                    </td>

                    <td>

                        <a href="../process/Accept.jsp?uid=<%=v.get(0)%>"><input type="button" value="Accept"></a>
                        <!--<input type="submit" value="Update"/>-->
                    </td>
                    <td>
                        <a href="../process/delete.jsp?uid=<%=v.get(0)%>"><input type="button" value="Delete"></a>

                    </td>
                </tr>  

                <% }}
                            else{
                                %>
                                <h2 style="color: red"><i>No Data Found</i></h2>
                                <%
                            }
        
                %>
        </table>
    </form>
                   <div align="center">
            <image src="../upload/3.png">
        </div>
                
</center>
</body>
</html>
