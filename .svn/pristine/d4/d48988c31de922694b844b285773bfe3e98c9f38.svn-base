/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pathfind;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

/**
 *
 * @author 670918
 */
public class PathFind {
//    private ArrayList<Node> visited;
//    private double totalDistance;
//    private double shortestDistance;
        private boolean[] marked; 
        private int[] prevPath;
        private double[] distance;
    
    public PathFind(NodeMap nm, Node n, Node g)
    {
//        totalDistance = 0;
//        shortestDistance = 0;
//        visited = new ArrayList<Node>();
        marked = new boolean[nm.N()];
        prevPath = new int[nm.N()];
        distance = new double[nm.N()];
        pf(nm, n, g);
    }
    
    private void pf(NodeMap nm, Node n, Node g)
    {
//        double x = dist;
//        if (n.equals(g))
//        {
//            return x;
//        }
//        else
//        {
//            visited.add(n);
//            for (Node nn: n.getLinks())
//            {
//                if (!visited.contains(nn))
//                {
//                    pf(nm, nn, g, x);
//                }
//            }
//        }
        
//        return x;
        // Assign numbers to nodes
        for (int i = 0; i < nm.getNodes().size(); i++)
        {
            Node nn = nm.getNodes().get(i);
            nn.N(i);            
        }
        System.out.println("Made it out of for loop.");
        LinkedList<Integer> q = new LinkedList<Integer>();
        for (int i = 0; i < nm.N(); i++)
        {
            // start the distance off high so the shortest path can be found
            distance[i] = 99999999;
        }
        prevPath[n.N()] = 0;
        marked[n.N()] = true;
        q.add(n.N());
        System.out.println("Made it out past queue");
        while (!q.isEmpty()) 
        {
            int v = q.poll();
            System.out.println("Made it into while loop.");
            for (Node i : n.getLinks())
            {
                System.out.println("Made it into for loop.");
                if (!marked[i.N()])
                {
                    System.out.println("Made it into if statement.");
                    prevPath[i.N()] = v;
                    distance[i.N()] = distance[v] + nm.getNodes().get(v).dist(i);
                    marked[i.N()] = true;
                    q.add(i.N());
                }
            }
            System.out.println("Made it out of for loop.");
        }
        System.out.println("Made it out of while loop.");
    }
    
    public boolean pathFound(Node n)
    {
        return marked[n.N()];
    }
    
    public double dist(Node n)
    {
        return distance[n.N()];
    }
    
    public ArrayList<Node> path(NodeMap nm, Node n)
    {
        if (!pathFound(n))
        {
            return null;
        }
        ArrayList<Node> path = new ArrayList<Node>();
        int x;
        for (x = n.N(); distance[x] != 0; x = prevPath[x])
        {
            path.add(nm.getNodes().get(x));
        }
        path.add(nm.getNodes().get(x));
        return path;
        
    }
    
    
}
