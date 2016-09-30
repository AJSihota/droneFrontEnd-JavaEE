/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pathfind;

/**
 *
 * @author 670918
 */
public class testPF {
    
    public static void main (String[] args) 
    {
        Node n1 = new Node(1, 1, 1, 0);
        Node n2 = new Node(2, 2, 1, 0);
        Node n3 = new Node(3, 5, 1, 0);
        Node n4 = new Node(4, 10, 10, 10);
        Node n5 = new Node(5, 2, 3, 0);
        
        n1.addLink(n2);
        n1.addLink(n3);
        n1.addLink(n4);
        n1.addLink(n5);
        n2.addLink(n1);
        n2.addLink(n3);
        n2.addLink(n4);
        n2.addLink(n5);
        n3.addLink(n1);
        n3.addLink(n2);
        n3.addLink(n4);
        n3.addLink(n5);
        n4.addLink(n1);
        n4.addLink(n2);
        n4.addLink(n3);
        n4.addLink(n5);
        n5.addLink(n1);
        n5.addLink(n2);
        n5.addLink(n3);
        n5.addLink(n4);
        
        NodeMap nm = new NodeMap(1);
        
        nm.addNode(n1);
        nm.addNode(n2);
        nm.addNode(n3);
        nm.addNode(n4);
        nm.addNode(n5);
        
        System.out.println("Made it to just before pathfind");
        PathFind pf = new PathFind(nm, n1, n5);
        System.out.println("Made it to just after pathfind");
        System.out.println(pf.path(nm, n5));
        System.out.println(pf.path(nm, n2));
        System.out.println(pf.path(nm, n3));
        System.out.println(pf.path(nm, n4));
        
    }

}
