package src.string;

public class Student {

    private String name;
    private int roll;

    public Student(String name, int roll){
        this.name = name;
        this.roll = roll;
    }

    public String toString(){
        return this.roll + " " + this.name;
    }

    public static void main(String[] args){
        Student s1  = new Student("Sahil", 40);
        Student s2 = new Student("Arjun", 5);

        System.out.println(s1);
        System.out.println(s2);
    }


}
