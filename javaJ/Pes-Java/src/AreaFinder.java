public class AreaFinder {

    public float area(int base, int height){
        return (float) 0.5 * (base * height);
    }

    public int area(int side){
        return side*side;
    }

    public int area(int length, float breadth){
        return (int) (length*breadth);
    }
}
