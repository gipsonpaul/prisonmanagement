<%@page import="dbconnection.dbcclass"%>
<%
String id=request.getParameter("uid");
String Name=request.getParameter("name");
String CaseNo=request.getParameter("caseno");
String Casetype=request.getParameter("casetype");
String ParoleDate=request.getParameter("paroledate");
String EntryDate=request.getParameter("EntryDate");
String str="UPDATE `prison`.`parole_register` SET `name` = '"+Name+"' , `caseno` = '"+CaseNo+"' , `casetype` = '"+Casetype+"' , `paroledate` = '"+ParoleDate+"' , `entrydate` = '"+EntryDate+"' WHERE `uid` = '"+id+"' ";
System.out.println(str);
dbconnection.dbcclass con=new dbcclass();
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
            window.location="../Administrator/view_parole_register.jsp";
        </script>
        <%
}

%>