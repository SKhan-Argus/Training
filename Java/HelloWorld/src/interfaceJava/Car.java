package interfaceJava;

public class Car implements Wheel, Door {

    public void distance(){
        System.out.println("distance");
    }
    public void diameter(){
        System.out.println("diameter");
    }

    public void open(){
        System.out.println("open");
    }

    public void close(){
        System.out.println("close");
    }

    public static void main(String[] args){
        Car c = new Car();
        c.close();
        c.diameter();
        System.out.println(c.wheelCount);
        c.myWheel();
    }
}
