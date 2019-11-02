

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
        <jsp:useBean id="db" class="dbconnection.dbcclass"/>
        <jsp:useBean id="rg" class="beanfiles.payroll"/>
        <jsp:setProperty name="rg" property="*"/>
    </head>
    <body>
        <%
           String name=request.getParameter("prsn");
            String qry = "insert into payroll(prsn,dates,amount,work)values('" + rg.getPrsn() + "','" + rg.getDates()+ "','" + rg.getAmount() + "','" + rg.getWork() + "')";
          String d1=request.getParameter("wrkdate");
     
            if (db.putData(qry) > 0) {
             %>
             
                    <script>
                        alert("Insertion successfull..");
                        window.location="../Administrator/adminhome.jsp";
                    </script>
                    <%
                } else {
                    %>
                    <script>
                        alert("Insertion failed..try again..");
                        window.location="../Administrator/payroll.jsp";
                    </script>
                    <%
                }
                %>

    </body>
</html>
