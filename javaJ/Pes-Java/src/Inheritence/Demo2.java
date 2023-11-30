package Inheritence;

interface Demo2 {

    private void add(){
        System.out.println("mama mia");
    };

    default void miamor(){
        add();
        System.out.println("hola");
    }

}

abstract class Demo3 implements Demo2{

    Demo3(){
        add();
        miamor();

    }

    public void add(){

    };
}

class c extends Demo3 implements Demo2{
    public static void main(String[] args) {
        new c().add();
    }
}
