<%-- 
    Document   : SearchPrisoner
    Created on : Feb 23, 2018, 4:46:30 PM
    Author     : admin
--%>
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
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script>
        
        function getprisoner(val){
            $.ajax({
                type: 'POST',
                url: "getprisoner.jsp",
                data: "id="+val,
                success: function (data) {
                       $('#response').html(data); 
                    }
            })
        }
    </script>
    <body>
    <center>
        <h1>PRISONERS</h1>
        <table class="table table-bordered">
                        <tr><td>Choose Prisoner Id</td>
                            <td><select name="pid" onchange="getprisoner(this.value)" >
                                    <option value=""> ----- SELECT PRISONER TO VIEW DETAILS</option>
                                     <%
                    dbconnection.dbcclass db=new dbcclass();
                    String qry="select prsn_id,name from nominal_rolls";
                    Iterator it=db.getData(qry).iterator();
                    if(it.hasNext()){
                        while(it.hasNext()){
                            Vector v=(Vector)it.next();
                        out.println("<option value='"+v.get(0)+"'>"+v.get(0)+"</option>");
                    }
                    }
                    else
                    {
                        out.println("<option value=''>NO PRISONERS FOUND</option>");  
                    }
                    
                    %>
                                </select>
                    </select></td></tr>
        </table>
        <div id="response"></div>
    </body>
</html>
