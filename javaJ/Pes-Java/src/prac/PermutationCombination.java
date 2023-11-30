package prac;

public class PermutationCombination {
    public long factorial(int n) {
        if (n == 0) {
            return 1;
        } else {
            long result = 1;
            for (int i = 1; i <= n; i++) {
                result *= i;
            }
            return result;
        }
    }

    public  double permutation(int n, int r) {
        if (n < r) {
            return 0;
        }
        return (double) factorial(n) / factorial(n - r);
    }

    public double combination(int n, int r) {
        if (n < r) {
            return 0;
        }
        return (double) factorial(n) / (factorial(r) * factorial(n - r));
    }
}
