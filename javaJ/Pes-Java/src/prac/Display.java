package prac;

public class Display {
    public void disp(int n){
        int val = 1;
        for (int i=1;i<=n;i++){
            for (int j=1;j<=i;j++){
                System.out.print(val++ +" ");
            }
            System.out.println();
        }
    }
}
