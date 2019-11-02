
<html>
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
    </head>
    <body bgcolor="gainsboro">
        <jsp:include page="DataHeader.jsp"></jsp:include>
         <table>
            <tr>
                <!--<td><a href="release_register.jsp"><input type="button" name="button" value="HOME"></a></td>-->
<!--                <td><a href="history.php"><input type="button" name="button" value="HISTORY"> </a></td>
                <td><a href="disclaimer.php"><input type="button" name="button" value="DISCLAIMER"> </a></td>
                <td><a href="viewmessage.php"><input type="button" name="" value="NOTIFICATIONS"></a></td>-->
                <!--<td><a href="logout.php">logout</a>-->
               </tr>
        </table>
        </div>
<!--        <ul>
            <li><h2><a href="jailerhome.php">Jailer Info</a> </h2>
                <a href="jailerdetailssubmit.php">insert</a> </li>
                <li><h2><a href="prisonershome.php">Prisoners Info</a> </h2></li>
                <li><h2><a href="visitorshome.php">Visitors Info</a> </h2>   
                 </li>
            
              
           
        </ul>-->
        <div align="">
            <image src="">
        </div>
<span>
    <ul>
       
            
   
<!--        <li> <a href="../Data_administrator/data_admin_register.jsp" onclick="loadpage(1)" ><label>Data Admin</label></a><br/></li>
        <li><a href="../police_officer/police_registration.jsp" onclick="loadpage(1)" ><label>Police</label></a><br/>  </li>-->
      
    </ul>
    
    </span>
         
        <form name="form1" method="post" action="../process/LOGINPROCESS.jsp">
            <!--<h3 align="center"> Jailer Signup </h3>-->
            <div align="center">
                 
    
                 
            <center>  
                <h3 style="color: red"><i><span>LOGIN</span></i> </h3>
        <table>
            <tr>
                <td style="color: blue"> UserName </td>
                <td> <input type="text" id="username" onblur="abc();"  name="username" required=""> </td>
             </tr>
             <tr>
                 <td style="color: blue"> PassWord </td>
                 <td> <input type="password" id="password"  name="password" required=""> </td>
             </tr>
        </table>
         <input type="submit" style="background-color: green;color: #ffffff">
            </center>
    </form>
        
    
        </form>
</div>
  </div>
          
           
    </body>
</html>
        <jsp:include page="DataFooter.jsp"></jsp:include>