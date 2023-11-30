package prac;

public class AbstractDemo {

    public static void main(String[] args) {
        impl impl = new impl();
        impl.setA(10);
        impl.disp();


    }
}

abstract class AbsractClass{

    public AbsractClass(int a){
        System.out.println("mama mia");
        this.a = a;
    }
    int a;

//    abstract void setA(int a);

    void disp(){
        System.out.println(this.a);
    }
}


class impl extends AbsractClass{
    int aa;
    impl(){
        super(10);
//        this.setA(10);
    }

    void setA(int a){
        this.aa = a;
        super.a = a;
    }

    void disp(){
        System.out.println(this.a+ " super class variable"+super.a);
    }
}

interface A{

}
