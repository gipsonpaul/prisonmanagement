<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <script type="text/javascript">
        function validate()
{
     var email = document.getElementById("txtMailid");
                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if (!filter.test(email.value)) {
                    email.focus;
                    email.style.background = "#FF8C8C";
                    return false;
                      alert("Enter valid email ID");
                }
                else
                {
                    email.style.background = "lightgreen";
                    valid = true;
                }

     
//       document.getElementById("quantity").value="";
    }

                    </script>
    </head>
   <body bgcolor="gainsboro">
        <!--<image src="../images/example3.jpg">-->
         <div id="content">
             
        <center>
            <h2><u>POLICE REGISTRATION</u> </h2><br/>
         <form name="Register" action="../process/police_register.jsp" method="post">
            <table>
                <tr> <td>Name</td>      <td><input type="text" required="" name="name" id="name"/></td> </tr>
                 <tr>
                     <td>
                       Date of birth:
                       </td>
                  <td>
                    <select name="dd">
                        <%
                        for(int i=1;i<32;i++)
                            out.println("<option>"+i+"</option>");
                        %>
                    </select>
               
                    
                    <select name="mm">
                            <%
                            for(int i=1;i<13;i++)
                                out.println("<option>"+i+"</option>");
                            %>
                        </select>
                   
                   
                        <select name="yy">
                            <%
                            for(int i=1900;i<2020;i++)
                                out.println("<option>"+i+"</option>");
                            %>
                        </select>
                    </td> 
                    
               </tr>
               <tr> <td>Age</td>     <td><input type="text" name="age" required="" id="age"/></td></tr>
                <tr> <td>Gender</td>    <td><input type="radio" name="gender"  value="male"/>male
                                            <input type="radio" name="gender" value="female"/>female</td></tr>
                <tr> <td>Email</td>     <td><input type="email" required="" name="email" id="email" onkeyup="validate()" pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}"/></td></tr>
                <tr> <td>Department</td>   <td><input type="text" required="" name="department" id="department"/></td> </tr>
                <tr> <td>Post</td>   <td><input type="text" name="post" required="" id="post"/></td> </tr>
                <tr> <td>Contact</td>   <td><input type="text" name="contact" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits" required="" id="contact"/></td> </tr>
                <tr> <td>Address</td>   <td><textarea name="address" required="" id="address" rows="5" cols="21"></textarea></td> </tr>
                <tr> <td>Username</td>  <td><input type="text" name="username" required="" id="username"/></td> </tr>
                <tr> <td>Password</td>  <td><input type="password" required=""  title="Please enter exactly 6 character or more" required pattern=".{6,}" name="password" id="password"/></td> </tr>                
                <tr> <td colspan="2" align="right"><input type="submit" value="Register"/></td> 
                <td><input type="reset" value="clear"></td>
                </tr>
            </table>
        </form>
            <image src="../images/police.jpg"> 
        </center>
         </div>
    </body>
</html>