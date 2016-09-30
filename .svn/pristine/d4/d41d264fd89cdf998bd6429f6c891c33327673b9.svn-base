/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package detectors;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.multi.GenericMultipleBarcodeReader;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

/**
 *
 * @author 562841
 */
public class BarcodeScan {
    private BufferedImage inputImage;
    private MultiFormatReader mfr;
    private BinaryBitmap bitmap;
    private RGBLuminanceSource RGBsource;
    private Result result;
    private GenericMultipleBarcodeReader mbr;
    /**
     * Default constructor
     */
    public BarcodeScan(){}
    
    /**
     * Take in source image and convert to usable form for bar code scanning
     * @param inputPath 
     * @return BinaryBitmap object
     */
    public BinaryBitmap input(String inputPath)
    {
        try {
            File inputFile = new File(inputPath);
            inputImage = ImageIO.read(inputFile);
            int[] pixels = inputImage.getRGB(0,0, inputImage.getWidth(), inputImage.getHeight(), null, 0, inputImage.getWidth());
            RGBsource = new RGBLuminanceSource(inputImage.getWidth(),inputImage.getHeight(),pixels);
            bitmap = new BinaryBitmap(new HybridBinarizer(RGBsource));
            return bitmap;
        } catch (IOException ex) {
            Logger.getLogger(BarcodeScan.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    /**
     * Scan input BinaryBitmap for any of the ZXing supported bar code formats
     * @param inputBitmap 
     */
    public void scan(BinaryBitmap inputBitmap)
    {
        result = null;
        try {
            mfr = new MultiFormatReader();
            result = mfr.decode(inputBitmap);
            String test = result.getText();
            System.out.println(test);
        } catch (NotFoundException ex) {
            Logger.getLogger(BarcodeScan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Scan input BinaryBitmap for any of the ZXing supported bar code formats
     * Scan for multiple instances of a bar code
     * @param inputBitmap 
     */
    public void scanMulti(BinaryBitmap inputBitmap)
    {
        Result[] results = null;
        try {
            mfr = new MultiFormatReader();
            mbr = new GenericMultipleBarcodeReader(mfr);
            results = mbr.decodeMultiple(inputBitmap);
            for(int i=0;i<results.length;i++)
            {
                System.out.println(results[i]);
            }
        } catch (NotFoundException ex) {
            Logger.getLogger(BarcodeScan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
