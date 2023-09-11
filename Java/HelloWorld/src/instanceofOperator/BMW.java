package src.instanceofOperator;

public class BMW extends Car{
//    public static void main(String[] args){
//        Car c = new Car();
//        System.out.println(c instanceof Car);
//    }

    public static void main(String[] args){
        Car c= new BMW();
        BMW b = (BMW)c;

    }
}
