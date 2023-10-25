import java.util.Arrays;

public class Main {

    public int i;

    Main(int i){
        this.i = i;
    }

    public static void main(String[] args) {
        AreaFinder areaFinder = new AreaFinder();
        
        System.out.println(22/7*10);
        System.out.println("area of triangle"+ areaFinder.area(10, 20));
        System.out.println("area od square "+ areaFinder.area(10));
        System.out.println("area of rectangle"+ areaFinder.area(10, (float) 20.0));

    }

}

