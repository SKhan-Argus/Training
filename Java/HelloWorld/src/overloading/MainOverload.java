package overloading;

public class MainOverload {

    public static void main(String[] args){
        System.out.println("String[]");
        main("string");
    }

    public static  void main(String args){
        System.out.println("String");
        main(1);
    }

    public static void main(int args){
        System.out.println("Integer");
    }
}
