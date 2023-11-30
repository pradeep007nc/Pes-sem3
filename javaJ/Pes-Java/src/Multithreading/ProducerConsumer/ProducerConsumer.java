package Multithreading.ProducerConsumer;

import java.lang.reflect.Type;
import java.util.LinkedList;
import java.util.List;

public class ProducerConsumer {

    public static void main(String[] args) throws InterruptedException {
        ProducerConsumer pc = new ProducerConsumer();

        // Start the producer and consumer threads
        Thread producer = new Thread(() -> {
            try {
                pc.produce();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        });

        Thread consumer = new Thread(() -> {
            try {
                pc.consume();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        });

//        producer.start();
//        consumer.start();
//
//        // Wait for the threads to finish
//        producer.join();
//        consumer.join();
    }

    int val = 0;
    List<Integer> linkedList = new LinkedList<>();

    public void produce() throws InterruptedException {
        try {
            while (!Thread.interrupted()) {
                synchronized (this) {
                    if (this.linkedList.size() >= 20) {
                        wait();
                    }
                    val++;
                    System.out.println("Produced: " + val);
                    linkedList.add(val);
                    notify();
                }

            }
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public void consume() throws InterruptedException {
        try {
            while (!Thread.interrupted()) {
                synchronized (this) {
                    if (this.linkedList.isEmpty()) {
                        wait();
                    }
                    val--;
                    System.out.println("Consumed: " + val);
                    linkedList.remove(linkedList.size() - 1);
                    notify();
                }

            }
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
