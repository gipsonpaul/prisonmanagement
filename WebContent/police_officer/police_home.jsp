<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Business Consultants</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
 <script>
    function loadpage(val)
    { 
        obj=(window.XMLHttpRequest)? new XMLHttpRequest():((window.ActiveXObject)? new ActiveXObject(Microoft.XMLHTTP):null);
     if(obj!=null){                   
            obj.onreadystatechange=function(){ //alert(status);alert(obj.readyState);
                if(obj.readyState==4&&obj.status==200){
                    document.getElementById('response').innerHTML = obj.responseText; //alert(obj.responseText);
                }
            };
            if(val==1)
            {
                obj.open('post', 'view_case_register.jsp?userID=', true);
            }
            else if(val==2)
            {
                obj.open('post', 'release_register.jsp?userID=' + val, true);
            }
            else if(val==3)
            {
                obj.open('post', 'view_inout_register.jsp?userID=' + val, true);
            }
            else if(val==4)
            {
                obj.open('post', 'view_police.jsp', true);
            }
            else if(val==5)
            {
                obj.open('post', 'view_data_admin.jsp', true);
            }
            else if(val==6)
            {
                obj.open('post', 'view_interview_request.jsp', true);
            }
            else if(val==7)
            {
                obj.open('post', 'view_parole_register.jsp', true);
            }
            else if(val==8)
            {
                obj.open('post', 'view_prisoner.jsp', true);
            }
        else if(val==9)
            {
                obj.open('post', '../view_release_register.jsp', true);
            }	
//            
//            else if(val==8)
//            {
//                obj.open('post', 'admin/Viewnewconnection.jsp?userID=' + val, true);
//            }	
            obj.send(null);
        }
    }
</script>
    <script>
    function loadpag(val)
    { //alert(val);
                  obj=(window.XMLHttpRequest)? new XMLHttpRequest():((window.ActiveXObject)? new ActiveXObject(Microoft.XMLHTTP):null);
           
                  if(obj!=null){                   
                  obj.onreadystatechange=function(){
                  if(obj.readyState==4&obj.status==200){
                    document.getElementById('response').innerHTML = obj.responseText;//alert(obj.readyState);
                   
                  }
                    };

                    obj.open('post', 'payment.jsp?userID='+ val, true);

                    obj.send(null);

            }
    }
     function loadpag1(val)
    { //alert(val);
                  obj=(window.XMLHttpRequest)? new XMLHttpRequest():((window.ActiveXObject)? new ActiveXObject(Microoft.XMLHTTP):null);
           
                  if(obj!=null){                   
                  obj.onreadystatechange=function(){
                  if(obj.readyState==4&obj.status==200){
                    document.getElementById('response').innerHTML = obj.responseText;//alert(obj.readyState);
                   
                  }
                    };

                    obj.open('post', 'viewProfile.jsp?userID='+ val, true);

                    obj.send(null);

            }
    }
</script>
    <body bgcolor="gainsboro">
        <image src="../images/adminhead.jpg">
            <div align="left">
    

         <span>
             <ul>
                 <li>   <a href="In_out_register.jsp" onclick="loadpage(1)" ><label>In Out Register</label></a><br /></li>
                     <li>  <a href="view_release_register.jsp" onclick="loadpage(2)"><label>View Release Register</label></a><br /></li>
                         <li> <a href="case_register.jsp" onclick="loadpage(3)"><label>Case Register</label></a><br /></li>
                             <li><a href="view_interview_request.jsp" onclick="loadpage(6)"><label>View Interview Request</label></a><br /></li>
                                 <li> <a href="view_parole_reg_police.jsp" onclick="loadpage(7)"><label>View Parole Register</label></a><br /></li>
                                     <li>  <a href="view_prisoner.jsp" onclick="loadpage(8)"><label>View Prisoners</label></a><br /></li>
                                         <li> <a href="../Administrator/Home.jsp" >Logout</a></li>
             </ul>
                                             
          </span><!--
      </span>
      </span>
  </div>

	<div   id="response"> </div><span class="flt" style="width:296px;"></span>
  </div>
    
  <div  style="width:260px; height:162; background-color:#FFFFFF;"></div>
<div style="width:1000px; margin:auto;">  </div>
<!--FOOTER ENDS HERE-->
<!--<div   id="response" style="width: 1000px;height: 500px;background-color:bisque "> </div><-->

           <image src="../images/jailback1.jpg">   
           
</body>
</html>
