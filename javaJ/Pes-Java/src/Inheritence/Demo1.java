package Inheritence;

public abstract class Demo1 {

    abstract void add();

    void ade(){

    }
}

class main extends Demo1{
    public static void main(String[] args) {
        new main().add();
    }

    @Override
    public void add() {
        System.out.println("mama mia");
    }
}
