import java.util.Arrays;
import java.util.Scanner;

 class Main {

    protected int i;

    class car
    {

        public static void main(String[] args) {
            AreaFinder areaFinder = new AreaFinder();
            Main main =  new Main();
            System.out.println(main.i = 12);
            System.out.println(main.i);
            System.out.println("select 1 to triangle 2 to square 3 to rectangle");
            Scanner sc = new Scanner(System.in);
            int n = sc.nextInt();

            switch (n){
                case 1:     {System.out.println("area of triangle"+ areaFinder.area(10, 20)); break;}
                case 2:     {System.out.println("area od square "+ areaFinder.area(10)); break;}
                case 3:     {System.out.println("area of rectangle"+ areaFinder.area(10, (float) 20.0)); break;}
                default:
                    System.out.println("enter only between 1 2 and 3");
            }

        }
    }

}

