package prac;

interface DemoInterface
{
    int a=10;
    public void dummy();
}
public abstract class ClassA implements DemoInterface{

    void disp(){
        System.out.println(this.a);
    }
    int a;
//    ClassA(int a){
//        this.a = a;
//    }


    public void foo() {
        System.out.println("mama mia");
    }

    abstract int demo();


}

class ClassB extends ClassA{

//    ClassB(){
//        super(2);
//    }

    @Override
    int demo() {
        return 0;
    }

    @Override
    public void dummy() {

    }
}

class ClassC extends ClassB{

}

interface demo{
    int a = 10;
    void coller();
}

class demo2  implements demo{

    @Override
    public void coller() {
        System.out.println("lmao");
    }
}

class AbstractMain{
    public static void main(String[] args) {
        demo2 demo2 = new demo2();
        demo2.coller();
    }
}