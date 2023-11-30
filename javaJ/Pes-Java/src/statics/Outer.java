package statics;

public class Outer {
    static int i = 10;
    static String name = "pradeep";

    int y = 20;

    public class Inner{
         public void disp(){
            System.out.println(name);
            System.out.println(i);
            System.out.println();
        }
    }
}
