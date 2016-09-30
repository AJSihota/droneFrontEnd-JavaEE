/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package detectors;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.MatOfRect;
import org.opencv.core.Point;
import org.opencv.core.Rect;
import org.opencv.core.Scalar;
import org.opencv.core.Size;
import org.opencv.highgui.Highgui;
import static org.opencv.highgui.Highgui.IMREAD_COLOR;
import org.opencv.highgui.VideoCapture;
import org.opencv.imgproc.Imgproc;
import org.opencv.objdetect.CascadeClassifier;

/**
 *
 * @author 562841
 */
public class CCdetection {
    
    static
    {
        //Mandatory load in opencv library
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
    }
    
    /**
     * Method to scan image with x classifier
     */
    public void scanImage(String path)
    {   
        CascadeClassifier faceCC = new CascadeClassifier();
        faceCC.load("res/haarcascade_frontalface_alt.xml");
        
        //Matrix to hold image to be scanned
        Mat image = new Mat();
        image = Highgui.imread(path, IMREAD_COLOR);
        
        Mat rgb = new Mat();
        Mat gray = new Mat();
        image.copyTo(rgb);
        image.copyTo(gray);
        
        //Create integral image from the grayscale version of frame 
        Imgproc.cvtColor( rgb, gray, Imgproc.COLOR_BGR2GRAY);  
        Imgproc.equalizeHist( gray, gray );

        //MatOfRect detection window initialized
        MatOfRect detects = new MatOfRect();
        faceCC.detectMultiScale(gray, detects);

        //Print out number of detected rect objects detected
        if(detects.toArray().length != 0)
        {
            System.out.printf("Detected %s\n", detects.toArray().length);
        }
    }
    
    /**
     * Method to scan video with x classifier
     * NOT COMPLETE
     */
    public void scanVideo()
    {
        //Initialize video capture object to 0(default camera device)
        VideoCapture vc = new VideoCapture(0);
        
        //String path = "";
        
        //Initialize and load in classifier
        CascadeClassifier faceCC = new CascadeClassifier();
        faceCC.load("res/haarcascade_frontalface_default.xml");

        //Matrix(opencv core image object) to hold the image frame coming from the capture stream
        Mat image = new Mat();
       
        boolean isFound = false;
        while(!isFound){
            //VideoCapture read combines grab and retrieve methods to decode and return the frame
            vc.read(image);
            if(image != null){
                
                //Initialize new Mats to hold the original colored frame and the grayscaled frame
                Mat rgb = new Mat();
                Mat gray = new Mat();
                image.copyTo(rgb);
                image.copyTo(gray);
                
                //Create integral image from the grayscale version of frame 
                Imgproc.cvtColor( rgb, gray, Imgproc.COLOR_BGR2GRAY);  
                Imgproc.equalizeHist( gray, gray );
                
                //MatOfRect detection window initialized
                MatOfRect detects = new MatOfRect();
                faceCC.detectMultiScale(gray, detects);
                
                //Print out number of detected rect objects detected
                if(detects.toArray().length != 0)
                {
                    System.out.printf("Detected %s\n", detects.toArray().length);
                    //prodFound(UPC,"T");
                    isFound=true;
                }
                
            } else{
                break;
            }
        }
    }
}
