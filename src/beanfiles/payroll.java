/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beanfiles;

/**
 *
 * @author admin
 */
public class payroll {
    dbconnection.dbcclass con=new dbconnection.dbcclass();
    String prsn,dates,amount,work;

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

    public String getPrsn() {
        return prsn;
    }

    public void setPrsn(String prsn) {
        this.prsn = prsn;
    }


    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

  
    
}
