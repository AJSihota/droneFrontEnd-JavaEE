/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SLSBeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author 562841
 */
@Stateless
@LocalBean
public class dronedbSLSB {

    private Connection conn;
    private PreparedStatement ps;
    
    public dronedbSLSB()
    {
        
    }
    
    /**
     * Create connection to database
     */
    public void connect() throws ClassNotFoundException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drone", "root", "password");
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Close database connection
     */
    public void close()
    {
        try {
            if(ps!=null && conn!=null)
            {
                ps.close();
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /*********************************************************************************************
    ** User validation functions
    *********************************************************************************************/
    
    //hash password????
    public ResultSet isUser(String username, String password)
    {
        try {
            String sql = "call isUser(?)";
            ps = conn.prepareCall(sql);
            ps.setString(1,username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public ResultSet isAdmin(String username)
    {
        try {
            String sql = "call isAdmin(?)";
            ps = conn.prepareCall(sql);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public ResultSet setAdmin(String username)
    {
        try {
            String sql = "call setAdmin(?)";
            ps = conn.prepareCall(sql);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public ResultSet removeUser(String username)
    {
        try {
            String sql = "call removeUser(?)";
            ps = conn.prepareCall(sql);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    /*********************************************************************************************
    ** Product functions
    *********************************************************************************************/
    
    /**
     * Return all products in database
     * @return 
     */
    public ResultSet getProducts()
    {
        try {
            String sql = "select * from products";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    /**
     * Return result set containing products found at the shelf specified
     * @param shelfId
     * @return 
     */
    public ResultSet getProductsAt(String shelfId)
    {
        try {
            String sql = "select shelf_xPos,shelf_yPos,(select name from products where UPC=product_UPC), product_UPC from product_locations where shelf_id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, shelfId);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public ResultSet addProduct(String name, String UPC)
    {
        try {
            String sql = "call removeProduct(?)";
            ps = conn.prepareCall(sql);
            ps.setString(1, UPC);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public void editProduct(String UPC)
    {
        //TODO: call procedure to update product based on UPC
        //input parameters to change
    }
    
    public ResultSet removeProduct(String UPC)
    {
        try {
            String sql = "call removeProducts(?)";
            ps = conn.prepareCall(sql);
            ps.setString(1, UPC);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public ResultSet removeProductAt(String shelfId, int x, int y)
    {
        try {
            String sql = "call removeProductAt(?,?,?)";
            ps = conn.prepareCall(sql);
            ps.setString(1, shelfId);
            ps.setInt(2, x);
            ps.setInt(3, y);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    /*********************************************************************************************
    ** Task functions
    *********************************************************************************************/
    
    /**
     * Returns all tasks saved in the database
     * @return 
     */
    public ResultSet getTasks()
    {
        try {
            String sql = "select task_id,product_upc,shelf_id,shelf_xPos,shelf_yPos,date_created,(select status from task_status where status_num=tasks.status) from tasks";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    /*
    public void addTaskList()
    {
        //TODO: call procedure create taskList
    }
    
    public void removeTaskList(int taskListId)
    {
        //TODO: call procedure remove a taskList
    }
    */
    
    /**
     * Add task to database
     * @param UPC, product upc
     * @param shelfId, shelf id
     * @param x, int x coordinate
     * @param y, int y coordinate
     * @return boolean result of statement
     */
    public Boolean addTask(String UPC, String shelfId, int x, int y)
    {
        try {
            String sql = "INSERT INTO drone.tasks (product_upc, shelf_id, shelf_xPos, shelf_yPos, date_created, status) VALUES(?,?,?,?, now(),0);";
            ps = conn.prepareStatement(sql);
            ps.setString(1, UPC);
            ps.setString(2, shelfId);
            ps.setInt(3, x);
            ps.setInt(4, y);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    /**
     * Remove task from database
     * @param taskId
     * @return 
     */
    public Boolean removeTask(int taskId)
    {
        try {
            String sql = "delete from tasks where task_id=?";
            ps = conn.prepareCall(sql);
            ps.setInt(1, taskId);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    /**
     * Change status of a task
     * @param taskId
     * @param status code
     * @return 
     */
    public Boolean setTaskStatus(int taskId, int status)
    {
        try {
            String sql = "update tasks set status=? where task_id=?";
            ps = conn.prepareCall(sql);
            ps.setInt(1, status);
            ps.setInt(2, taskId);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(dronedbSLSB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
