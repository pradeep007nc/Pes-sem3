package prac;

public class MostSignificant {

    public void dispMostSignificant(int n){
        String val = String.valueOf(n);
        if (val.isEmpty())
                return;
        StringBuilder ans = new StringBuilder();
        for (int i=1;i<val.length();i++){
            ans.append(val.charAt(i));
        }
        ans.append(val.charAt(0));
        System.out.println(ans.toString());
    }

}
