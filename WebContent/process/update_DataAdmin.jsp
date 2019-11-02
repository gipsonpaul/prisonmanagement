<%@page import="dbconnection.dbcclass"%>
<%
String id=request.getParameter("uid");
String Name=request.getParameter("name");
String DOB=request.getParameter("dob");
String Age=request.getParameter("age");
String Contact=request.getParameter("contact");
String Addrses=request.getParameter("address");
dbconnection.dbcclass con=new dbcclass();
String str="UPDATE `prison`.`dataadmin_register` SET `name` = '"+Name+"' , `dob` = '"+DOB+"' , `age` = '"+Age+"' ,`address` = '"+Addrses+"' , `contact` = '"+Contact+"' WHERE `uid` = '"+id+"' ";
System.out.println(str);
if(con.putData(str)>0){
    %>
     <script>
            alert("Updation successfull..");
            window.location="../Administrator/adminhome.jsp";
        </script>
        <%
    }else{
        %>
        <script>
            alert("Updation failed..");
            window.location="../Administrator/view_data_admin.jsp";
        </script>
        <%
    
}



%>