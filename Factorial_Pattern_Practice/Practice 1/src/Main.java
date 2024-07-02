
public class Main {
    public static void main(String[] args) {
       FactoryBurger factoryB= new FactoryBeefBurger();
        Burger bb=factoryB.createBurger();
        bb.prepare();



        FactoryBurger factoryC= new FactoryChickenBurger();
        Burger bc= factoryC.createBurger();
        bc.prepare();
    }
}