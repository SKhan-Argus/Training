package overriding;

public class Child extends Parent {
    public int add(int a, int b){
        return a+b;
    }

    public int add(int a){
        return a;
    }

    public static void main(String[] args){
        Parent c = new Child();
        int a=12;
        int b =8;
        System.out.println(c.add(a,b));
    }
}
