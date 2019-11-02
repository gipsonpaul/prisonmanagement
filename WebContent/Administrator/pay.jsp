
    <%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body bgcolor="gainsboro">
    
        <image src="../images/example3.jpg">
      
<div align="left">
    
<center>
<h1><u> PAYROLL </u></h1>

<form action="pay.jsp" method="post">
<table>
    <%
     dbconnection.dbcclass dcon=new dbconnection.dbcclass();
     %>
<!--    <tr><td>Prisoner Name </td><td>
            <select name="pay" id="pyname" onchange>
            <td>   <input type="text" name="payid" ></td></tr>
<%
                           String str="SELECT * FROM `nominal_rolls`";
                         
                           Iterator itr=dcon.getData(str).iterator();
                           while(itr.hasNext()){
                           Vector v=(Vector)itr.next();
                            
                           
                           
                           %>
                            <option value="<%=v.get(0)%>"><%=v.get(1)%></option> <%
                                }
                                %>
                            
              </select></td> 
              <td><input type="submit" value="Result" id="reslt" onclick="payroll()"></td></tr>-->
<!--    <script>
        $('#reslt').click(function (){
           alert("inside click"); 
        });
        
        </script>--> 
<tr><td>Payroll</td><td>
        <%
//            String q1="Select date from payroll";
           
         String qry="select sum(amount) from payroll where  pid='"+request.getParameter("pid")+"' and dates between '2017-02-01' AND '2017-02-04'"; 
         System.out.println(qry);
//              dbconnection.dbcclass dcon1=new dbconnection.dbcclass();
                           Iterator itr1=dcon.getData(qry).iterator();
                           if(itr1.hasNext()){
                           Vector v=(Vector)itr1.next();
                           %>
                           <input type="text" name="payroll" value="<%out.println(v.get(0));%>">
                         
                      
  <%
           
}
%>                    
       
</table>
</
</center></div>
 <image src="../images/jailback1.jpg"/>
</body>
</html>






