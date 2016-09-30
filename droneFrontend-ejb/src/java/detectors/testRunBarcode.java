/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package detectors;

import com.google.zxing.BinaryBitmap;

/**
 *
 * @author 562841
 */
public class testRunBarcode {
    public static void main(String[] args)
    {
        BarcodeScan test = new BarcodeScan();
        BinaryBitmap input = test.input("C:\\Users\\562841\\Desktop\\barcodes\\testMulti.jpg");
        test.scan(input);
        test.scanMulti(input);
    }
}
