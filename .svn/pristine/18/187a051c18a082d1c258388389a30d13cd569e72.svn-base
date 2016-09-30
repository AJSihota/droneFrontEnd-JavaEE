/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.jsp.JspWriter;

/**
 *
 * @author 670918
 */
public class DroneController {
    private ArrayList<String> commands;
    private String dirtyCommands;
    
    public DroneController()
    {
        this.commands = new ArrayList<String>();
    }
    
    public DroneController(ArrayList<String> commands)
    {
        this.commands = commands;
    }
    
    public void queueCommand(String command)
    {
        commands.add(command);
    }
    
    public void deleteCommand(String command)
    {
        commands.remove(command);
    }
    
    public void deleteCommand(int index)
    {
        commands.remove(index);
    }
    
    public void executeCommands()
    {
        for (String str: commands)
        {
            // this method is handled by servlet now, shouldn't be needed       
        }
    }
    
    public void procCommands(String dirty)
    {
        if (dirty.equals(""))
            return;
        this.dirtyCommands = dirty;
        String[] doity = dirty.split(";");
        this.commands = new ArrayList<String>(Arrays.asList(doity));
    }
    
    public void procDirty()
    {
        
    }
    
    public void getCommands(JspWriter out) throws IOException
    {
        int i = 1;
        for (String cmd: commands)
        {
            out.println("<option value='"+i+"'>"+cmd+"</option>");
            i++;
        }
    }
    
    public void clearCommands()
    {
        this.commands.clear();
    }
    
    public void abort()
    {
        // send abort to nodecopter
    }
    
}
