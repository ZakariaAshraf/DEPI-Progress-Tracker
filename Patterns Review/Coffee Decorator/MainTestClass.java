package Decorator;

public class MainTestClass {
    public static void main(String[]args){
        Coffee simple =new SimpleCoffee();
        System.out.println("the type is : "+simple.getDescription()+"\ncost is : "+ simple.cost());
        CoffeeDecorator c1 =new CaramelCoffee(new SimpleCoffee());
        System.out.println("the type is : "+c1.getDescription()+"\ncost is : "+ c1.cost());



        CoffeeDecorator c2 =new MilkCoffee(new WhipCoffee(simple));
        System.out.println("the type is : "+c2.getDescription()+"\ncost is : "+ c2.cost());



    }
}
