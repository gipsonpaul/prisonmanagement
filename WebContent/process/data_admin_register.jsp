

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
        <jsp:useBean id="db" class="dbconnection.dbcclass"/>
        <jsp:useBean id="rg" class="beanfiles.data_admin_register"/>
        <jsp:setProperty name="rg" property="*"/>
    </head>
    <body>
        <%
            String dob = rg.getDd() + "/" + rg.getMm() + "/" + rg.getYy();
            String qry = "insert into dataadmin_register(name,dob,age,gender,address,contact)values('" + rg.getName() + "','"+dob+"','" + rg.getAge()+ "','" + rg.getGender() + "','" + rg.getAddress() + "','" + rg.getContact() + "')";
            //out.println(qry);
            String user = "user";
            String qry2 = "insert into userlogin(username,password,userID,userType)values('" + rg.getUsername() + "','" + rg.getPassword() + "',(select MAX(uid) from dataadmin_register),'data_admin')";
            //out.println(qry2);
            if (db.putData(qry) > 0) {

                if (db.putData(qry2) > 0) {
                    %>
                    <script>
                        alert("registration successfull..");
                        window.location="../test/Home.jsp";
                    </script>
                    <%
                } else {
                    %>
                    <script>
                        alert("registration failed..try again..");
                        window.location="../test/Home.jsp";
                    </script>
                    <%
                }
            }
        %>

    </body>
</html>
