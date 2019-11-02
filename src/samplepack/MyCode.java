/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package samplepack;

import java.util.Iterator;
import java.util.Vector;
































public class MyCode {
    
    
    public String payroll(int uid){
        dbconnection.dbcclass con=new dbconnection.dbcclass();
         String qry="select sum(amount) from payroll where date between 2017-01-27 and 2017-01-31";
           Iterator itr1=con.getData(qry).iterator();
                           if(itr1.hasNext()){
                           Vector v=(Vector)itr1.next();
                           }
                           return "";
}
    public  static void main(String args[]){
        MyCode obj=new MyCode();
        obj.payroll(5);
        
    }
}