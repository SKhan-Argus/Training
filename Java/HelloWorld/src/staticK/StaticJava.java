package staticK;

public class StaticJava {
    static int a;
    static{
        a=10;
        Abc abc = new Abc();
        System.out.println("Hello Static " + abc.abc);
    }


    public static void main(String[] args){
        System.out.println("Hello Main " + a );
    }
}
