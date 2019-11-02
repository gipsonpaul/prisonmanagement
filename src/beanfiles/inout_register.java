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
public class inout_register {
    dbconnection.dbcclass con=new dbconnection.dbcclass();
 String name,age,contact,address,caseno,casetype,reason,date,exit_time,entry_time;   

    public String getName() {
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

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getExit_time() {
        return exit_time;
    }

    public void setExit_time(String exit_time) {
        this.exit_time = exit_time;
    }

    public String getEntry_time() {
        return entry_time;
    }

    public void setEntry_time(String entry_time) {
        this.entry_time = entry_time;
    }
    public int putData(int opt){
        return con.putData(generateQuery(opt));
    }
    
    public Vector getData(int opt){
        return con.getData(generateQuery(opt));
    }
        
    private String generateQuery(int opt){
        
//        String str = "UPDATE case_register set name='"+getName()+"',dob='"+getDob()+"',age="+getAge()+",gender='"
//                        +getGender()+"',address='"+getAddress()+"',contact='"+getContact()+"',caseno="+getCaseno()+",ipc_section='"+getIpc_section()+"',fir_no='"+getFir_no()+"',casetype='"+getCasetype()+"',admission_date='"+getAdmission_date()+"',release_date='"+getRelease_date()+"' where uid='"+getUid()+"'";
//        if(opt==1)                
//                return str;
//         if(opt==2)
//                return "select * from case_register";  
        return "";
    }

}