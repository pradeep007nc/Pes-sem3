package Exceptions;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.InputMismatchException;
import java.util.Map;
import java.util.Scanner;

import static java.math.BigDecimal.ROUND_UNNECESSARY;

public class TryCatch {

    public static void main(String[] args) {
        BigDecimal numerator = BigDecimal.valueOf(22);
        BigDecimal denominator = BigDecimal.valueOf(7);
        String rem = String.valueOf(numerator.divide(denominator,10,  RoundingMode.HALF_UP));
        System.out.println(rem);
    }

}
