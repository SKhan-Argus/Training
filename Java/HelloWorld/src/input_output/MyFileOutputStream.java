package src.input_output;

import java.io.*;

public class MyFileOutputStream {

    public static void main(String[] args)  {
        try {
            String s = "Hello, My name is Sahil Khan";
            byte[] b = s.getBytes();
            FileOutputStream file = new FileOutputStream("output.txt");
            file.write(b);
            file.close();
            System.out.println("Success");
        } catch (Exception e){
            System.err.println("Error");
        } finally {
        }


    }
}
