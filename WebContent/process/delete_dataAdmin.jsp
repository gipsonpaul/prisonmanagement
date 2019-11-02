<%@page import="dbconnection.dbcclass"%>
<%
String id=request.getParameter("uid");
String str="DELETE FROM `prison`.`dataadmin_register` WHERE`uid` = '"+id+"'";
System.out.println(str);
dbconnection.dbcclass con=new dbcclass();
if(con.putData(str)>0){
    %>
    <script>
        alert("Deletion Successful");
        window.location="../Administrator/adminhome.jsp";
            </script>
            <%
}else{
    %>
     <script>
        alert("Deletion Failed");
        window.location="../Administrator/view_data_admin.jsp";
            </script>
            <%
}
%>