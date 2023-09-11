package src.multithreading;

public class MyThread implements Runnable{


    public void run(){

        for(int i=0;i<5;i++){
            System.out.println(Thread.currentThread().getId() + ": " +Thread.currentThread().getName()+ " " + i);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

    }

    public static  void main(String [] args){

        System.out.println(Thread.currentThread().getId() + ": " + Thread.currentThread().getName());

        MyThread t = new MyThread();
        Thread thread1 = new Thread(t);
        Thread thread2 = new Thread(t);
        thread1.start();
        thread2.start();
    }
}
