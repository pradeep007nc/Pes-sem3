package Multithreading;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class car{
    String name;
    car(String name){
        this.name = name;
    }
}


public class Main {

    public static void main(String[] args) throws InterruptedException{
        List<car> cars = new ArrayList<>();
       for (int i=0;i<5;i++){
           cars.add(new car("pradeep"));
       }

       for (car car: cars) {
           Thread t1 = new Thread(() -> {
               System.out.println(car.name);
               try {
                   Thread.sleep(3000);
               } catch (InterruptedException e) {
                   throw new RuntimeException(e);
               }
           });

           t1.start();
           t1.join();
       }
    }

}
