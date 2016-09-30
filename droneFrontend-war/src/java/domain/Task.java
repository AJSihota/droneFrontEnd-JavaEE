/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.util.Date;

/**
 * 
 * @author 562841
 */
public class Task {
    private String shelfId;
    private String UPC;
    private Date dateCreated;
    private Date dateCompleted;
    private boolean isCompleted;

    public Task()
    {
    }
    
    public Task(String shelfId, String UPC)
    {
        /*Shelf s = new Shelf();
        s.checkShelfId(shelfId);
        Product p = new Product();
        p.checkUPC(UPC);*/
        
        this.shelfId = shelfId;
        this.UPC = UPC;
        this.dateCreated = new Date();
        this.isCompleted = false;
    }

    public String getShelfId() {
        return shelfId;
    }

    public String getUPC() {
        return UPC;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public Date getDateCompleted() {
        return dateCompleted;
    }

    public boolean isIsCompleted() {
        return isCompleted;
    }
    
    public void setCompleted()
    {
        dateCompleted = new Date();
        isCompleted = true;
    }
}
