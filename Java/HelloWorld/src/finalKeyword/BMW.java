package src.finalKeyword;

public class BMW extends Car{

    public BMW(int maxSpeed){
        super(maxSpeed);
    }

    public static void main(String[] args){
        final int speed;
        speed = 100;
        Car c = new Car(speed);
        System.out.println("Wheels: " + Car.wheels);
        System.out.println("MaxSpeed: " + c.maxSpeed);
    }

}
