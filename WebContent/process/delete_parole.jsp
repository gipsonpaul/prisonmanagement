<%@page import="dbconnection.dbcclass"%>
<%
String id=request.getParameter("uid");
String str="DELETE FROM `prison`.`parole_register` WHERE `uid` = '"+id+"'";
System.out.println(str);
dbconnection.dbcclass con=new dbcclass();
if(con.putData(str)>0){
    %>
     <script>
            alert("Deletion successfull..");
            window.location="../Administrator/adminhome.jsp";
        </script>
        <%
    }else{
        %>
        <script>
            alert("Deletion failed..");
            window.location="../Administrator/view_parole_register.jsp";
        </script>
        <%
}
%>