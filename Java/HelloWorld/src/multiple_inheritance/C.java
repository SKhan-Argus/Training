package multiple_inheritance;

public class C extends B{
    C(){
        super();
        System.out.println("hello C");
    }

    public static void main(String[] args){
        C item = new C();
        System.out.println("hello main");
    }
}
