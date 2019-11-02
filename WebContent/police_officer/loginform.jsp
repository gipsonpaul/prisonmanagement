<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
            function check()
            {
               var name=document.getElementById("username").value;
                var word=document.getElementById("password").value;
                if(document.getElementById("username").value=="")
                    {
                        alert("enter the user name");
                    }
                    if(word=="")
                    {
                        alert("enter the password");
                    }                            
            }
        </script>
    </head>
    <body>
    
         <form action="../process/LOGINPROCESS.jsp" method="get" onsubmit="check();">            
            <center>  
        <h1>Login</h1>
        <table>
            <tr>
                <td> UserName </td>
                <td> <input type="text" id="username" onblur="abc();"  name="username"> </td>
             </tr>
             <tr>
                 <td> PassWord </td>
                 <td> <input type="password" id="password"  name="password"> </td>
             </tr>
        </table>
        <input type="submit">
            </center>
    </form>
        
    </body>
</html>
