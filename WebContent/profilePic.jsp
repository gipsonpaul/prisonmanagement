<%-- 
    Document   : profilePic
    Created on : Feb 2, 2018, 5:17:36 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script type="text/javascript">
    function preview(){
      var oFReader = new FileReader();
      
      oFReader.readAsDataURL(document.getElementById("uploadimage").files[0]);
      
      oFReader.onload = function (oFREvent) {
      
      document.getElementById("uploadPreview").src = oFREvent.target.result; 
      alert("Upload Successful..")
         };
    }
         </script>
    </head>
  
 <body>
       
        
           
         <div style="width: 100%;height: 700px;background-color: yellowgreen">
            <div style="width: 25%;height: 700px;background-color: #33ffff;float: left;">
                <img src="samplepic/auth1.jpg" width="332px" height="400px">
            </div>
            <div style="width: 50%;height: 700px;float: left;">
                <img src="samplepic/ss.jpg" width="670px" height="240px">
        
        
                <form action="propic_act.jsp" method="post" enctype="multipart/form-data">
             <table>
            
                 <tr><td>Upload  image</td><td><input type="file" accept="image/*" name="fname" id="uploadimage" multiple="true" onchange="preview();"/> </td></tr>
                
                 
            <tr><td></td><td><img id="uploadPreview" width="200" height="200" /></td></tr> 
             <tr><td></td></tr>
            <tr><td></td><td><input type="submit" value="upload"></td></tr>
            
             </table>
            
        </form>
            </div>
            <div style="width: 25%;height: 700px;background-color: #33ffff;float: left;">
                <img src="samplepic/auth2.jpg" width="332px" height="400px">
            </div>
        </div>
             </body>
</html>
