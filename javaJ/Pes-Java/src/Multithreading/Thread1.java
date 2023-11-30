package Multithreading;

public class Thread1 implements Runnable{
    @Override
    public void run() {
        for (int i=0;i<5;i++){
            System.out.println("mamma mia thread 1");
        }
    }

}


class Thread2 implements Runnable{

    @Override
    public void run() {
        for (int i=0;i<5;i++){
            System.out.println("mama mia from thread 2");
        }
    }
}