package overloading;

public class Add {

    public  int add(int a, int b){
        return a+b;
    }

    private int add(int a, int b, int c){
        return a+b+c;
    }

    public static void main(String[] args){
        Add first = new Add();
        int result = first.add(3,5);
        System.out.println(result);
    }
}
