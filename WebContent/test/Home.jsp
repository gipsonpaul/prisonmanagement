<html>
<script>
        function loadpage(val)
        { 
            //alert(val);

            obj = (window.XMLHttpRequest) ? new XMLHttpRequest() : ((window.ActiveXObject) ? new ActiveXObject(Microoft.XMLHTTP) : null);

            if (obj != null) {
                obj.onreadystatechange = function () {
                    if (obj.readyState == 4 && obj.status == 200) {

                        //alert(status);
                        document.getElementById('response').innerHTML = obj.responseText;
                        //alert(obj.responseText);
                    }
                };
                if (val == 1)
                {
                    obj.open('post', 'Administrator/case_register.jsp?userID=' + val, true);
                } else if (val == 2)
                {
                    alert("view booking");
                    obj.open('post', 'Administrator/in_out_register.jsp?userID=' + val, true);
                } else if (val == 3)
                {
                    obj.open('post', 'Administrator/nominal_rolls.jsp?userID=' + val, true);
                } else if (val == 4)
                {
                    //alert("reg ");
                    obj.open('post', 'Administrator/parole_register.jsp?userID=' + val, true);
//                } else if (val == 5)
//                {
//                    obj.open('post', 'User/UserLogin.jsp?userID=' + val, true);
                } else if (val == 5)
                {
                    obj.open('post', 'Administartor/release_register.jsp?userID=' + val, true);
                
                else if (val == 6)
                {
                    obj.open('post', 'police_officer/loginform.jsp?userID=' + val, true);
                }
                }else if (val==6)
                {
                obj.send(null);
                </script>
    <script>
        function valid() {
            var res = true;
            var nameid = document.getElementById('name');

            if (nameid.value == "") {
                alert("Enter valid name");
                nameid.focus();
                return false;
            }

            return res;
        }
    </script>
 <body bgcolor="gainsboro">
        <image src="../images/header.jpg">
        <div align="right">
   
                        <form action="../process/LOGINPROCESS.jsp" method="post">
                            <center>  
                                <h1>Login</h1>
                                <table>
                                    <tr>
                                        <td>
                                            UserName  
                                        </td>
                                        <td>
                                            <input type="text" name="username" >

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            PassWord
                                        </td>
                                        <td>
                                            <input type="password" name="password">
                                        </td>
                                    </tr>
                                    <tr><td>  <input type="submit" name="submit" value="login" ></td></tr>
                                </table>
                              
                            </center>
                        </form>
                 <image src="../images/jailback1.jpg">  
                </body>
</html>        
