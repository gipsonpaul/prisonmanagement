<%-- 
    Document   : accept
    Created on : 18 Dec, 2014, 1:49:28 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--<h1>ACCEPTED</h1>-->
        <%
            dbconnection.dbcclass dbc=new dbconnection.dbcclass();
//            int conNo=Integer.parseInt(request.getParameter("bkid"))+1000;
//            System.out.println("bkid: "+request.getParameter("bkid"));
           // String qry;
           String qry="update interview_request set status='accpet' where status='Not Accepted'";
            //String qry="update userbook set statu='accpet' where bkid='"+request.getParameter("bkid")+"'";
//        out.println(qry);
//            if( dbc.putData(qry)>0)
//           {
//                String qry1="insert into price (userid,Billno,price) values("+request.getParameter("uid")+","+request.getParameter("bno")+",500)";
                if(dbc.putData(qry)>0){
                %>
                <script>
                    alert("Request accepted");
                    window.location="../Administrator/DataHome.jsp";
                </script>
                <%
                }
           
           else
           {
               %>
                <script>
                    alert(" Request Not Accepted");
                    window.location="../DataHome.jsp";
                </script>
                <%
           }
            %>
           
    </body>
</html>
