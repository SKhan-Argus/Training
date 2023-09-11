package instanceBlock;

public class Car {
    int wheels;

    {
        wheels = 4;
        System.out.println("Instance Block");
    }
    public Car(){
        System.out.println("Constructr invoked " + this.wheels );

    }



    public static void main(String[] args){
        Car c1 = new Car();
        Car c2 = new Car();
    }
}
