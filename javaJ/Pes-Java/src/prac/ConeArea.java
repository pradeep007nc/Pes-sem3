package prac;

public class ConeArea {
    public double area(int radius, int height){
        radius *= radius;
        double volume = (Math.PI * radius * height) / 3;
        return volume;
    }
}
