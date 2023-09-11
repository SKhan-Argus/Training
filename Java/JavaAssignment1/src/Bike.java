import java.util.List;

public class Bike extends Vehicle {

    public Bike(List<Integer> vehicleDetails){
        this.maxSpeed = vehicleDetails.get(0);
        this.seats = vehicleDetails.get(1);
        this.wheels = vehicleDetails.get(2);
    }

    @Override
    public void display(){
        System.out.println("Bike created.");
    }


    @Override
    public void start() {
        System.out.println("Bike is running.");
    }

}
