/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beanfiles;

import java.util.Vector;

/**
 *
 * @author admin
 */
public class case_register {
    dbconnection.dbcclass con=new dbconnection.dbcclass();
    String name,age,dob,gender,address,name1,contact,caseno,ipc_section,fir_no,casetype,admission_date,release_date;
    int uid;

    public String getName1() {
         System.out.println(name1);
        return name1;
    }

    public void setName1(String name1) {
        this.name1 = name1;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
    public String getName() {
         System.out.println(name);
        return name;
       
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getCaseno() {
        return caseno;
    }

    public void setCaseno(String caseno) {
        this.caseno = caseno;
    }

    public String getIpc_section() {
        return ipc_section;
    }

    public void setIpc_section(String ipc_section) {
        this.ipc_section = ipc_section;
    }

    public String getFir_no() {
        return fir_no;
    }

    public void setFir_no(String fir_no) {
        this.fir_no = fir_no;
    }
    

    public String getCasetype() {
        return casetype;
    }

    public void setCasetype(String casetype) {
        this.casetype = casetype;
    }

    public String getAdmission_date() {
        return admission_date;
    }

    public void setAdmission_date(String admission_date) {
        this.admission_date = admission_date;
    }

    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }
      public int putData(int opt){
        return con.putData(generateQuery(opt));
    }
    
    public Vector getData(int opt){
        return con.getData(generateQuery(opt));
    }
        
    private String generateQuery(int opt){
        
        
        if(opt==1)  {  
            String str = "UPDATE case_register set name='"+getName1()+"',dob='"+getDob()+"',age="+getAge()+",gender='"
                        +getGender()+"',address='"+getAddress()+"',contact='"+getContact()+"',caseno="+getCaseno()+",ipc_section='"+getIpc_section()+"',fir_no='"+getFir_no()+"',casetype='"+getCasetype()+"',admission_date='"+getAdmission_date()+"',release_date='"+getRelease_date()+"' where uid='"+getUid()+"'";
System.out.println(str);
                return str;
                
        }
         if(opt==2)
                return "select * from case_register";  
        return "";
    }

}
    

