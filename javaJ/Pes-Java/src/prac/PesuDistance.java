package prac;

public class PesuDistance {

    public double distance(int x1, int x2, int y1, int y2){
        double dist;
        int val = ((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1));
        dist = Math.sqrt(val);
        return dist;
    }
}
