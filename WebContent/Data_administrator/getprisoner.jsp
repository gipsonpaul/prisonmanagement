<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="dbconnection.dbcclass"%>
<%
String prisonerid=request.getParameter("id");
dbconnection.dbcclass db=new dbcclass();
System.out.println(prisonerid);
String qry="SELECT NAME,caseno,casetype,image,admission_date,release_date FROM nominal_rolls WHERE prsn_id='"+prisonerid+"'";
Iterator it=db.getData(qry).iterator();
if(it.hasNext()){
    while(it.hasNext()){
        Vector v=(Vector)it.next();  %>
        <center><table><tbody><% out.println("<tr>"
                + "<td> <img src='../Profile/"+v.get(3)+"' width='150' height='150'/><BR/>"
                + "<NAME : "+v.get(0)+"<br/>CASE NUMBER : "+v.get(1) +"<br/>"
                + "CASE TYPE : "+v.get(2) +"<br/>"
                + "ADMISSION DATE : "+v.get(4)+"<br/>"
                + "RELEASE DATE : "+v.get(5) +"</td>"
                +"</td"
                + "</tr>"); %>
                </tbody></table></center>
        <%
        
    }
}
%>
