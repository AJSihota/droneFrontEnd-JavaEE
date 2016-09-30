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
public class NodeMap {
    private ArrayList<Node> nodes;
    private int mapID;

    public NodeMap(int mapID) {
        this.mapID = mapID;
        this.nodes = new ArrayList<Node>();
    }

    public ArrayList<Node> getNodes() {
        return nodes;
    }

    public void setNodes(ArrayList<Node> nodes) {
        this.nodes = nodes;
    }

    public int getMapID() {
        return mapID;
    }

    public void setMapID(int mapID) {
        this.mapID = mapID;
    }
    
    public void addNode(Node node){
        this.nodes.add(node);
    }
    
    public void removeNode(Node node){
        this.nodes.remove(node);
    }
    
    public int N(){
        return nodes.size();
    }
            
    
}
