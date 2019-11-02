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
public class parole_register {
        dbconnection.dbcclass con=new dbconnection.dbcclass();
    String name,caseno,casetype,paroledate,entrydate;
    int uid;

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

    public String getParoledate() {
        return paroledate;
    }

    public void setParoledate(String paroledate) {
        this.paroledate = paroledate;
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate;
    }
     
     public int putData(int opt){
        return con.putData(generateQuery(opt));
    }
    
    public Vector getData(int opt){
        return con.getData(generateQuery(opt));
    }
        
    private String generateQuery(int opt){
        
        String str = "UPDATE parole_register set name='"+getName()+"',caseno='"+getCaseno()+"',casetype="+getCasetype()+",paroledate='"
                        +getParoledate()+"',entrydate='"+getEntrydate()+"' where uid='"+getUid()+"'";
        if(opt==1)                
                return str;
         if(opt==2)
                return "select * from parole_register";  
        return "";
    }
 
}
