/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

/**
 *
 * @author 562841
 */
public class Shelf {
    private String shelfId;
    private String[][] locations;
    
    public Shelf()
    {
    }
    
    public Shelf(String shelfId)
    {
        this.shelfId = shelfId;
        this.locations = new String[4][6];
    }

    public String getShelfId() {
        return shelfId;
    }
    
    /**
     * Get the UPC of the product at the coordinates input by the user
     * @param xPos
     * @param yPos
     * @return String UPC of product at input [x,y]
     */
    public String getProductAt(int xPos, int yPos)
    {
        String get = locations[xPos][yPos];
        return get;
    }
    
    /**
     * Search the shelf for a Product based on its UPC
     * @param UPC
     * @return String array of [x,y] coordinates where the input UPC is found
     */
    public String[] searchFor(String UPC)
    {
        //TODO validate input
        String[] results = new String[24];
        
        for(int i=0; i<locations.length; i++)
        {
            for(int j=0; j<locations[i].length; j++)
            {
                if(getProductAt(i,j).equals(UPC))
                {
                    results[i] = "[" + i + "," + j + "]";
                }
            }
        }
        return results;
    }
    
    /**
     * Add product based on UPC to a index y at x of the shelf
     * @param UPC
     * @param xPos
     * @param yPos
     * @return boolean result
     */
    public boolean addProduct(String UPC, int xPos, int yPos)
    {
        //TODO validate inputs
        if(true)
        {
            locations[xPos][yPos] = UPC;
            return true;
        }
        else
        {
            return false;
        }
    }
    
    /**
     * Remove the product at [x,y] location
     * @param UPC
     * @param xPos
     * @param yPos
     * @return boolean result
     */
    public boolean removeProduct(String UPC, int xPos, int yPos)
    {
        if(true)
        {
            locations[xPos][yPos] = null;
            return true;
        }
        else
        {
            return false;
        }
    }
    
    /**
     * TODO: confirm shelf id format and then error check
     * @return 
     */
    public boolean checkShelfId(String shelfId)
    {
        return false;
    }
}
