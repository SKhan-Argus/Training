import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class VehicleMaker {
    public static Vehicle createVehicle(String vehicleType, List<Integer> vehicleDetails){
            switch (vehicleType.toLowerCase()) {
                case "car" -> {
                    return new Car(vehicleDetails);
                }
                case "bike" -> {
                    return new Bike(vehicleDetails);
                }
                case "truck" -> {
                    return new Truck(vehicleDetails);
                }
                default -> {
                    return null;
                }
            }
    }

    //method to convert array of String into array of Integer
    public static List<Integer> getVehicleDetails(String[] temp){
        List<Integer> vehicleDetails = new ArrayList<>();
        for(int i=1; i<temp.length; i++){
            vehicleDetails.add(Integer.parseInt(temp[i]));
        }
        return vehicleDetails;
    }

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        try (sc) {
            System.out.println("Enter vehicle details in format: \n Type MaxSpeed Seats Wheels \n");
            String userInput = sc.nextLine();

            String[] temp = userInput.split(" ");

            //extracting vehicle type from user input
            String vehicleType = temp[0];

            //extracting other details from user input
            List<Integer> vehicleDetails = getVehicleDetails(temp);

            //getting vehicle object based on vehicle type
            Vehicle vehicle = createVehicle(vehicleType, vehicleDetails);

            //if vehicle type does not exist
            if(vehicle == null){
                throw new NullPointerException();
            }

            vehicle.display();
            System.out.println(vehicle);
            vehicle.start();

        } catch (NullPointerException e) {
            System.err.println("Invalid vehicle type.");
        } catch (NumberFormatException e){
            System.err.println("Invalid input format.");
        }
    }
}
