import java.util.List;

public class Truck extends Vehicle{


    public Truck(List<Integer> vehicleDetails){
        this.maxSpeed = vehicleDetails.get(0);
        this.seats = vehicleDetails.get(1);
        this.wheels = vehicleDetails.get(2);
    }

    @Override
    public void display(){
        System.out.println("Truck created.");
    }

    @Override
    public void start() {
        System.out.println("Truck is running.");
    }
}
