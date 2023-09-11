package src.input_output;
import java.io.*;
public class MyFileInputStream {

    public static void main(String[] args){

        try {
            FileInputStream fin = new FileInputStream("output.txt");
//            int i = fin.read();
//            System.out.println((char)i);

            int i=0;
            while((i=fin.read())!=-1){
                System.out.print((char)i);
            }

        } catch (Exception e){
            System.err.println("Error");
        }

    }

}
