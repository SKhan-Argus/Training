package src.clone;

public class Car {

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public static void main(String[] args){

        Car c = new Car();
        try{
            Car c2 = (Car)c.clone();
        } catch (CloneNotSupportedException e){

        }

        System.out.println("HEllo");
    }


}
