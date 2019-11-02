<%@page import="dbconnection.dbcclass"%>
<%
String id=request.getParameter("uid");
String str="UPDATE `prison`.`police_register` SET  `status` = 'Accepted' WHERE`uid` = '"+id+"' ";
System.out.println(str);
dbconnection.dbcclass con=new dbcclass();
if(con.putData(str)>0){
    %>
     <script>
            alert("Approval successfull..");
            window.location="../Administrator/adminhome.jsp";
        </script>
        <%
    }else{
        %>
        <script>
            alert("Approval failed..");
            window.location="../Administrator/view_police.jsp";
        </script>
        <%
}
%>