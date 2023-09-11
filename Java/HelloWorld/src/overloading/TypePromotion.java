package overloading;

public class TypePromotion {

    public static void add(int a, double b){
        System.out.println("double "  + (a+b));
    }

    public static void add(int a, int b, int c){
        System.out.println("three " + (a+b+c));
    }

    public static void main(String[] args){

        int a = 10;
        int b = 10; //promoted to type double to match parameters
        add(a,b);
    }
}
