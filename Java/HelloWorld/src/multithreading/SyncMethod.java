package src.multithreading;

public class SyncMethod implements Runnable{


    @Override
    public void run() {
        this.startPrint();

    }

    public synchronized void startPrint(){
        int num = (int)Thread.currentThread().getId();
        for(int i=1; i<=10; i++){
            System.out.println(num + " * " + i + " = " + num*i);
            try {
                Thread.sleep((num-13) * 500L);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }



    public static void main(String[] args){

        SyncMethod s = new SyncMethod();
        Thread thread1 = new Thread(s);
        Thread thread2 = new Thread(s);
        thread1.start();
        thread2.start();
    }
}
