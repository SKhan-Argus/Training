package thisK;

public class Student {
    int roll;
    String name;

    public Student(int roll){
        this.roll = roll;
        System.out.println("one parameter");
    }
    public Student(int roll, String name){
        this(roll);
        this.name = name;
        System.out.println("two parameter");

    }

    public Student(Student s){
        this.name = s.name;
        this.roll = s.roll;
        System.out.println("object param");
        this.display(this);
    }

    public void display(Student s){
        System.out.println("Roll: " + this.roll);
        System.out.println("Name: " + this.name);
    }

    public static void main(String[] args){
        Student s1 = new Student(1, "sahil");
        Student s2 = new Student(s1);
    }

}
