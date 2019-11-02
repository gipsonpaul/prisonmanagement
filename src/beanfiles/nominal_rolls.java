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
public class nominal_rolls {
    dbconnection.dbcclass con=new dbconnection.dbcclass();
    String name,dob,age,gender,address,contact,caseno,casetype,admission_date,release_date;

   
   int uid = 0;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
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
        
        String str = "UPDATE nominal_rolls set name='"+getName()+"',dob='"+getDob()+"',age="+getAge()+",address='"+getAddress()+"',contact='"+getContact()+"',caseno="+getCaseno()+",casetype='"+getCasetype()+"',admission_date='"+getAdmission_date()+"',release_date='"+getRelease_date()+"'where uid='"+getUid()+"'";
        System.out.println(str);
        if(opt==1)                
                return str;
         if(opt==2)
                return "select * from nominal_rolls";  
        return "";
    }

}