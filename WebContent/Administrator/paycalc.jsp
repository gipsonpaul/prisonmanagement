                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    <%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
              function demo(op)
              {
                  odj=(window.XMLHttpRequest)?new XMLHttpRequest():((window.ActiveXObject)?new ActiveXObject(Microoft.XMLHTTP):null);              
                       if(obj!=null){
                           obj.onreadystatechange=function (){
                               if(obj.readyState==4&obj.status==200){
                                   document.getElementById('ajaxContent').innerHTML=obj.responseText;
                               }
                           };
                               
                           obj.open('post','pay.jsp?pid='+op,true);
                           obj.send(null);
                           
                       }         
    }
    </script>
    </head>
<body bgcolor="gainsboro">
    
        <image src="../images/example3.jpg">
      
<div align="left">
     <a href="Administrator/adminhome.jsp">Back</a>

    <center>
    <table cellspacing="40">
        <tr><th>Id</th><th>Prisoner</th><th>Payroll</th></tr>
    <%
        dbconnection.dbcclass con=new dbconnection.dbcclass();
        
String str="SELECT * FROM `nominal_rolls`";
Iterator itr=con.getData(str).iterator();
while(itr.hasNext())
{
    Vector v=(Vector)itr.next();
%>
        <tr><td><%=v.get(0)%></td><td><%=v.get(1)%></td><td><a href="../tempVis.jsp?id=<%=v.get(0)%>"><input type="Button" value="View Payroll"></a></td>
        
      <%}  %>
    </table>
    </center>
</div>
 <image src="../images/prison.jpg"/>
</body>
</html>






