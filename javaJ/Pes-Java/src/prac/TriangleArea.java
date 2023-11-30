package prac;

public class TriangleArea {

    int s;

    public double area(int a, int b, int c){
        s = (a + b + c)/2;
        int temp = s * ((s - a) * (s - b) * (s - c));
        double area = Math.sqrt(temp);
        return area;
    };

}
