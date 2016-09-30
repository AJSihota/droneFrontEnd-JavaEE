/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pathfind;

import java.util.ArrayList;

/**
 * Node class for populating a NodeMap so the drone can pathfind automatically
 * @author 670918
 */
public class Node {
    private int nodeID;
    private int xPos;
    private int yPos;
    private int zPos;
    private ArrayList<Node> links; // nodes that this node is linked to
    private int num; // arbitrarily assigned number for use in pathfinding algorithm

    public Node() {
        
    }
    
    public Node(int nodeID, int xPos, int yPos, int zPos) {
        this.nodeID = nodeID;
        this.xPos = xPos;
        this.yPos = yPos;
        this.zPos = zPos;
        this.links = new ArrayList<Node>();
    }

    public int N() {
        return num;
    }
    
    public void N(int n) {
        this.num = n;
    }
    
    public int getNodeID() {
        return nodeID;
    }

    public void setNodeID(int nodeID) {
        this.nodeID = nodeID;
    }

    public int getxPos() {
        return xPos;
    }

    public void setxPos(int xPos) {
        this.xPos = xPos;
    }

    public int getyPos() {
        return yPos;
    }

    public void setyPos(int yPos) {
        this.yPos = yPos;
    }

    public int getzPos() {
        return zPos;
    }

    public void setzPos(int zPos) {
        this.zPos = zPos;
    }

    public ArrayList<Node> getLinks() {
        return links;
    }

    public void setLinks(ArrayList<Node> links) {
        this.links = links;
    }
    
    public void addLink(Node node){
        this.links.add(node);
    }

    public void removeLink(Node node){
        this.links.remove(node);
    }
    
    public double dist(Node node){
        double cost;
        cost = Math.sqrt(Math.pow((this.getxPos()-node.getxPos()), 2.0) + Math.pow((this.getyPos()-node.getyPos()), 2.0) + Math.pow((this.getzPos()-node.getzPos()), 2.0));
        return cost;
    }
}
