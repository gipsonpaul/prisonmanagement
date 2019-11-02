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
            else if(val==10)
            {
                obj.open('post', '../payroll.jsp', true);
            }	
            obj.send(null);
            
            else if(val==11)
            {
                obj.open('post', '../paycalc.jsp', true);
            }	
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
    
<!--TOP STARTS HERE-->
<!--<div style="width:1000px; margin:auto;">
  <div class="flt tp_mbg"> 
      <span class="flt tp_01"> 
          <a href="" class="flt" style="color:#FFFFFF; margin:25px 0px 0px 35px; text-decoration:none;">HOME</a> 
      </span> 
          
          <a href="" class="flt" style="color:#FFFFFF; margin:49px 0px 0px 45px; text-decoration:none;">CONTACT US</a> 
          <a href="Home.jsp" class="flt" style="color:#FFFFFF; margin:49px 0px 0px 42px; text-decoration:none;">LOG OUT </a> 
      <span class="flt" style="background-color:#000000; width:164px; height:49px; margin-left:160px;"> 
          <a href=""><img src="images/tp_img1.gif" alt="" width="11" height="11" class="flt tp_img1" /></a> 
          <a href=""><img src="images/tp_img2.gif" alt="" width="11" height="9" class="flt tp_img2" /></a> 
          <a href=""><img src="images/tp_img3.gif" alt="" width="11" height="11" class="flt tp_img3" /></a> 
      </span> 
  </div>
  <span class="flt tp_bg1"> 
      <a href="#"></a> </span> </div>
  
-->
<!--<div style="width:1000px; margin:auto;">
  CENTER STARTS HERE
  <div class="flt" style="width:618px; height:auto; min-height: 400px; background-color:#FFFFFF; margin-left:27px;"> <br/>  
      <center> <h3><font style="color:#15777E">ADMIN HOME</font></h3>  </center>
      <div   id="response"> </div><span class="flt" style="width:296px;"></span>
  </div>
  CENTER STARTS HERE
  RIGHT STARTS HERE
    
-->  <div class="flt" style="width:275px; height:240px; background-color:#FFFFFF; margin-left:49px;align-content: center">  
      <span class="flt" style="height:170px; width:251px;  background-color:#F3F3F3; margin:36px 0px 0px 12px;"> 
      <span class="fltr rp_r1"></span> 
      <span class="flt rp_l1"> <br /> <!--
-->          





<span>
              <a href="view_case_register.jsp" onclick="loadpage(1)" ><label>View Case Register</label></a><br />
              <a href="release_register.jsp" onclick="loadpage(2)"><label>Release Register</label></a><br />
              <a href="view_inout_register.jsp" onclick="loadpage(3)"><label>View In_Out Register</label></a><br />
              <a href="view_police.jsp" onclick="loadpage(4)"><label>View Police </label></a><br />
              <a href="view_data_admin.jsp" onclick="loadpage(5)"><label>View Data_Admin Register</label></a><br />
              <a href="view_interview_request.jsp" onclick="loadpage(6)"><label>View Interview Request</label></a><br />
              <a href="view_parole_register.jsp" onclick="loadpage(7)"><label>View Parole Register</label></a><br />
              <a href="view_prisoner.jsp" onclick="loadpage(8)"><label>View Prisoners</label></a><br />
              <a href="view_release_register.jsp" onclick="loadpage(9)"><label>View Release Register</label></a><br />
              <a href="payroll.jsp" onclick="loadpage(10)"><label>Add Payment</label></a><br />
              <a href="paycalc.jsp" onclick="loadpage(11)"><label> View Payroll</label></a><br />
              <a href="Home.jsp" >Logout</a>
          </span><!--
-->      </span>
      </span>
  </div><!--

	<div   id="response"> </div><span class="flt" style="width:296px;"></span>
  </div>
    
  <div  style="width:260px; height:162; background-color:#FFFFFF;"></div>
<div style="width:1000px; margin:auto;">  </div>
<!--FOOTER ENDS HERE-->
<!--<div   id="response" style="width: 1000px;height: 500px;background-color:bisque "> </div><-->

           <image src="../images/prison.jpg">   
           
</body>
</html>
