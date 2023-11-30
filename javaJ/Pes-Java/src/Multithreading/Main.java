package Multithreading;

public class Main {
    public static void main(String[] args) throws Exception{
       Thread1 thread1 = new Thread1();
       thread1.run();

       Thread2 thread2 = new Thread2();
       thread2.run();
    }

}
