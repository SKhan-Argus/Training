package src.encapsulation;


import src.encapsulation.sub.SubPack;
import src.encapsulation.sub.sub2.*;

public class MyPack {

    public static void main(String[] args){
        SubPack.display();
        src.encapsulation.sub.SubPack.display(); // calling without need of import
        SubPack2.print();
    }


}
