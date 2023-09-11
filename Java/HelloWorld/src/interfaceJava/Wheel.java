package interfaceJava;

public interface Wheel {

    int wheelCount = 4;
    public void distance();
    public void diameter();

    default void myWheel(){
        System.out.println("my wheel started");
        myWheel2();
    }
    private void myWheel2(){
        System.out.println("running fast");
    }

}
