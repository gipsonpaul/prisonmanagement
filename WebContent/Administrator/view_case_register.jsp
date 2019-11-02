

<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>
        <jsp:useBean id="con" class="beanfiles.case_register"/>
    </head>

    <body bgcolor="gainsboro">
        <image src="../images/example3.jpg">
        <div align="left">

            <center>
                <h2> <u>CASE REGISTER </u></h2>  
                <%
                            Iterator it = con.getData(2).iterator();
                            if(it.hasNext()){
                            
                        %>
                <!--<form action="../process/update_case.jsp" method="get">-->
                    <table border="1">
                        <tr>
                            <th>Name </th> 
                            <th> Dob </th> 
                            <th> Age  </th>
                            <th>Address</th>
                            <th>Contact</th>
                            <th>Case NO</th>
                            <th>IPC_scetion</th>
                            <th>FIR_NO</th>
                            <th>Case Type</th>
                            <th>Date of admission</th>
                            <th>Date of release</th>
                            <!--                <th>photo</th>-->

                        </tr>
<%
                                    while (it.hasNext()) {
                                Vector v = (Vector) it.next();
                        %>

                        <tr><td><input type="text" name="uid" value="<%=v.get(0)%>" hidden></td></tr>

                        <tr>
                            <td>
                                <input type="text"  name="name1"   value="<%=v.get(1)%>">
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
                                <input type="text"  name="ipc_section" value=" <% out.println(v.get(8)); %>">
                            </td>
                            <td>
                                <input type="text"  name="fir_no" value=" <% out.println(v.get(9)); %>">
                            </td>
                            <td>
                                <input type="text" name="casetype" value="<% out.println(v.get(10)); %>">
                            </td>

                            <td>
                                <input type="text" name="admission_date" value="<% out.println(v.get(11)); %>">
                            </td>
                            <td>
                                <input type="text" name="release_date" value="<% out.println(v.get(12)); %>">
                            </td>
                            <!--                    <td>
                                                    <input type="text" name="photo" value="<% out.println(v.get(11));%>">
                                                </td>-->

                            <td>

                                <a href="../process/casereg_update.jsp?uid=<%=v.get(0)%>"><input type="button" value="Update"></a>
                                <!--<input type="submit" value="Update"/>-->
                            </td>
                            <td>
                                <a href="../process/delete_case.jsp?uid=<%=v.get(0)%>"><input type="button" value="Delete"></a>

                            </td>
                        </tr>  

                        <% }
                            }else{
                                
                        %>
                        <h4>No Data found</h4>
                        <%
                            }%>
                    </table>
                </form>
            </center></div>
        <!--<image src="../images/Jail.jpg" back>--> 

    </body>
</html>

