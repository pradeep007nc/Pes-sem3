package prac;

import statics.Outer;

import java.util.*;

public class ShowRoom {
    int totalSales;
    int totalSold;

    Map<Cars, Integer> map;

    public ShowRoom(){
        this.totalSales = 0;
        this.totalSold = 0;

        map = new HashMap<>();
        soldModels = new HashMap<>();

        //adding 5 baleno
        map.put(new Cars("Baleno", 12000), 5);
        map.put(new Cars("Ignis", 12000), 7);
        map.put(new Cars("Ciaz", 12000), 8);
    }

    public void update(){
        System.out.println("Enter the model name to be updated");
        Scanner sc = new Scanner(System.in);

        String name = sc.nextLine();
        for (Cars cars: map.keySet()){
            if (cars.carName.equals(name)){
                System.out.println("enter the price to be updated");
                int n = sc.nextInt();
                cars.setCost(n);
                return;
            };
        }
        System.out.println("car model not found");
    }

    Map<String, Integer> soldModels;

    public void sell(){
        System.out.println("Enter the model name to be sold");
        Scanner sc = new Scanner(System.in);

        String name = sc.nextLine();
        for (Cars cars: map.keySet()){
            if (cars.carName.equals(name)){
                int val = map.get(cars)-1;
                totalSales += cars.cost;
                totalSold++;
                soldModels.merge(name, 1, Integer::sum);
                map.put(cars, val);
                return;
            };
        }
        System.out.println("car model not found");
    }

    public void tot_sales(){
        System.out.println("total sales amount"+totalSales);
        System.out.println("total cars sold"+totalSold);
        System.out.println("models sold"+soldModels);
    }
}
