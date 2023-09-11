public abstract class Vehicle {

    int wheels;
    int maxSpeed;
    int seats;

    public abstract void display();

    public abstract void start();

    @Override
    public String toString() {
        return "Vehicle{" +
                " MaxSpeed=" + maxSpeed +
                ", Seats=" + seats +
                ", Wheels=" + wheels +
                " }";
    }
}
