import java.util.List;

public class Car extends Vehicle {

    public Car(List<Integer> vehicleDetails){
        this.maxSpeed = vehicleDetails.get(0);
        this.seats = vehicleDetails.get(1);
        this.wheels = vehicleDetails.get(2);


    }

    @Override
    public void display(){
        System.out.println("Car created.");
    }


    @Override
    public void start() {
        System.out.println("Car is running.");
    }

}
