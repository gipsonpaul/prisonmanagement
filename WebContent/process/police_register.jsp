.

<%-- 
    Document   : register2
    Created on : Jan 21, 2015, 12:18:30 AM
    Author     : SHIHAB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
        <jsp:useBean id="db" class="dbconnection.dbcclass"/>
        <jsp:useBean id="rg" class="beanfiles.police_register"/>
        <jsp:setProperty name="rg" property="*"/>
    </head>
    <body>
        <%
            String dob = rg.getDd() + "/" + rg.getMm() + "/" + rg.getYy();
            String qry = "insert into police_register(name,dob,age,gender,email,department,post,contact,address)values('" + rg.getName() + "','"+dob+"','" + rg.getAge()+ "','" + rg.getGender() + "','" + rg.getEmail() + "','" + rg.getDepartment() + "','" + rg.getPost() + "','" + rg.getContact() + "' ,'" + rg.getAddress() + "')";
           // System.out.println("password is: "+rg.getPassword());
            String user = "user";
            String qry2 = "insert into userlogin(username,password,userID,userType)values('" + rg.getUsername() + "','" + rg.getPassword() + "',(select MAX(uid) from police_register),'police')";
            //out.println(qry2);
            if (db.putData(qry) > 0) {

                if (db.putData(qry2) > 0) {
                    %>
                    <script>
                        alert("registration successfull..");
                        window.location="../police_officer/loginform.jsp";
                    </script>
                    <%
                } else {
                    %>
                    <script>
                        alert("registration failed..try again..");
                        window.location="../police_register.jsp";
                    </script>
                    <%
                }
            }
        %>

    </body>
</html>
