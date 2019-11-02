

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="dbconnection.dbcclass"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>


<%  
dbcclass con=new dbcclass();
String path = getServletContext().getRealPath("/Profile");
String myString=path.replace("\\","\\\\");
String lastString=myString.substring(myString.indexOf("\\web")+1,myString.length());
String firstString=myString.substring(0,myString.indexOf("\\build")+1);

String names[]=new String[3];
int i=0;

String full=firstString.concat(lastString);

MultipartRequest m = new MultipartRequest(request, full); 

Enumeration files =m.getFileNames();
  while(files.hasMoreElements() )
          {
            String upload = (String)files.nextElement();
            String filename = m.getFilesystemName(upload);
            names[i]=filename;
            System.out.println("name:"+filename);
            i++;
//           String str="update registration set image_location ='"+filename+"' where registration_id="+session.getAttribute("uid");
//            con.putData(str);
//            response.sendRedirect("../Profile.jsp");
          }

 
for(String x:names){
System.out.println("ssssss:"+x);
}

int rid=0;
String str="SELECT MAX(prsn_id) FROM nominal_rolls";
Vector v=con.getData(str);
Iterator itr=v.iterator();
if(itr.hasNext()){
Vector vv=(Vector)itr.next();
rid=Integer.parseInt(vv.get(0).toString());
}


dbcclass dcon=new dbcclass();
String str1="update nominal_rolls set image='"+names[0]+"' where `prsn_id` = '"+rid+"' ;";
System.out.println(str1);
if(dcon.putData(str1)>0){
    




//here do insert into





%>
<script>
                 alert("Datas Added Successfully..! ");
                
                 window.location="Data_administrator/DataHome.jsp";
                 </script>
                 <%
                    }
                 %>