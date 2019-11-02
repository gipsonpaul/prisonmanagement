
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbcclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body bgcolor="gainsboro">
         <jsp:include page="DataHeader.jsp"></jsp:include>
    <center>  
        <h3 style="color: red"><b><span>INTERVIEW  </span> </b>REQUEST</h3>
        <form action="../process/interview_request.jsp" method="post">
            <table>
                            <tr><td style="color: blue"> Name of prisoner</td><td><select name="prname">
                    <%
                    dbconnection.dbcclass db=new dbcclass();
                    String qry="select prsn_id,name from nominal_rolls";
                    Iterator it=db.getData(qry).iterator();
                    if(it.hasNext()){
                        while(it.hasNext()){
                            Vector v=(Vector)it.next();
                        out.println("<option value='"+v.get(0)+"'>"+v.get(1)+"</option>");
                    }
                    }
                    else
                    {
                        out.println("<option value=''>NO PRISONERS FOUND</option>");  
                    }
                    
                    %>
                        </select></td></tr>
<!--                <tr><td style="color: blue"> Case Type </td> <td> <input type="text" name="casetype" id="casetype" required=""/></td></tr>
                  
                <tr> <td style="color: blue"> Case No </td> <td> <input type="text" name="caseno" id="caseno" required=""/></td></tr>-->
        
<tr> <td style="color: blue"> Date </td>  <td> <input type="text" name="date" id="date" required value="
<% String pattern = "yyyy-MM-dd";
SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
String date = simpleDateFormat.format(new Date());
out.println(date);
%>"></td></tr>
        <tr><td style="color: red"> Visiting time:</td></tr>
        <tr><td style="color: blue">Entry time </td><td> <input type="time" name="entry_time" id="entry_time" required/></td></tr>
        <tr> <td style="color: blue"> Exit time </td><td> <input type="time" name="exit_time" id="exit_time" required/> </td></tr>
        <tr><td style="color: red"> Visitor's Details:</td></tr>
        <tr> <td style="color: blue">Name</td>    <td><input type="text" name="visitor_name" id="visitor_name" required/> </td></tr>                          
        <tr> <td style="color: blue"> Address </td><td> <textarea name="address" id="address" required></textarea> </td></tr>
        <tr> <td style="color: blue"> Contact</td><td> <input type="text" name="contact" id="contact" required/> </td></tr>
            <!--<tr> <td> Status</td><td> <input type="text" name="status" id="status"/> </td></tr>-->

            <tr> <td colspan="2" align="right"><input type="submit" value="Submit" style="background-color: red;color: white;"/></td>  
     <td><input type="reset" value="clear"></td> 
       </tr></table>
        </form>
         
    </center></div>
    </body>
</html>
<jsp:include page="DataFooter.jsp"></jsp:include>