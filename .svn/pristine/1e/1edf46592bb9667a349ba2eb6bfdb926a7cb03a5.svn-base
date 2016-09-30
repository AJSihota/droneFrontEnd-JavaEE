/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.io.File;
import java.io.FileNotFoundException;
import static java.lang.Character.isDigit;

/**
 *
 * @author 562841
 */
public class Product {
    
    private String name;
    private String UPC;
    private String classifier;
    
    private String xPos; //or Int
    private String yPos; //or Int
    
    //private String[] shelves; 
    //  Shelf id and locations within eg. [1A,3,4] Shelf 1A, x 3, y 4
    
    public Product()
    {
    }
    
    public Product(String name, String UPC, String classifier) throws Exception
    {
        if(checkName(name) == false)
        {
            throw new Exception("Invalid name");
        }
        if(checkUPC(UPC) == false)
        {
            throw new Exception("Invalid UPC");
        }
        
        this.name = name;
        this.UPC = UPC;
        this.classifier = classifier;
    }

    //Getters and setters******************************************************
    
    public String getName() {
        return name;
    }

    private void setName(String name) {
        this.name = name;
    }

    public String getUPC() {
        return UPC;
    }

    private void setUPC(String UPC) {
        this.UPC = UPC;
    }

    public String getClassifier() {
        return classifier;
    }

    public void setClassifier(String classifier) {
        this.classifier = classifier;
    }

    public String getxPos() {
        return xPos;
    }

    private void setxPos(String xPos) {
        this.xPos = xPos;
    }

    public String getyPos() {
        return yPos;
    }

    private void setyPos(String yPos) {
        this.yPos = yPos;
    }
    
    
    //Input validation*********************************************************
    
    /**
     * Check product name to be within 60 character limit
     * @param name
     * @return boolean result
     */
    private boolean checkName(String name)
    {
        if(name.length() <= 60 || name.length() > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    /**
     * Check UPC for 12 numerical digits as per UPC standard
     * @param UPC
     * @return boolean result
     */
    public boolean checkUPC(String UPC)
    {
        if(UPC.length() == 12)
        {
            for(int i=0;i<UPC.length();i++)
            {
                char check = UPC.charAt(i);
                if(!isDigit(check))
                {
                    return false;
                }
            }
            return true;
        }
        else
        {
            return false;
        }
    }
    
    private boolean checkClassifier(String classifier)
    {
        File file = new File(classifier);
        if(file.exists() == true)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    private boolean checkPos(String xPos, String yPos)
    {
        /*
        TODO validate position against shelf/plano location
        */
        return false;
    }
}
