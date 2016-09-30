/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pathfind;

import java.util.ArrayList;

/**
 *
 * @author 670918
 */
public class DFSearch {
    private ArrayList<Node> visited;
    private double totalDistance;
    private double shortestDistance;
    
    public DFSearch(NodeMap nm, Node n, Node g)
    {
        totalDistance = 0;
        shortestDistance = 0;
        visited = new ArrayList<Node>();
        pf(nm, n, g, totalDistance);
    }
    
    private double pf(NodeMap nm, Node n, Node g, double dist)
    {
        double x = dist;
        if (n.equals(g))
        {
            return x;
        }
        else
        {
            visited.add(n);
            for (Node nn: n.getLinks())
            {
                if (!visited.contains(nn))
                {
                    pf(nm, nn, g, x);
                }
            }
        }
        
        return x;
    }
}
