

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dbc" class="dbconnection.dbcclass"/>

        <jsp:useBean id="reg" class="beanfiles.nominal_rolls"/>
        <jsp:setProperty name="reg" property="*"/>
    </head>
    <body>

        <%
            String Name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            String caseno = request.getParameter("caseno");
            String casetype = request.getParameter("casetype");
            String admission_date = request.getParameter("admission_date");
            String release_date = request.getParameter("release_date");

            String pic = "propic.gif";

            String qry = "insert into nominal_rolls(name,dob,age,gender,address,contact,caseno,casetype,admission_date,release_date) values('" + Name+ "','" + dob + "'," + age + ",'" + gender + "','" + address + "','" + contact + "'," + caseno + ",'" + casetype + "','" + admission_date+ "','" + release_date + "')";
            out.println(qry);

            if (dbc.putData(qry) > 0) {

                response.sendRedirect("../profilePic.jsp");

            } else {
                out.println("Error");

            }

        %>

    </body>
</html>
