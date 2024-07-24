package Decorator;

public interface Coffee {

    double cost();
    String getDescription();
}
class SimpleCoffee implements Coffee{
    @Override
    public double cost() {
        return 15.0;
    }

    @Override
    public String getDescription() {
        return " Simple Coffee ";
    }
}
abstract class CoffeeDecorator implements Coffee{
    Coffee coffee;
    CoffeeDecorator(Coffee coffee){
        this.coffee=coffee;
    }

    @Override
    public double cost() {
        return coffee.cost();
    }

    @Override
    public String getDescription() {
        return coffee.getDescription();
    }
}
class MilkCoffee extends CoffeeDecorator{
    MilkCoffee(Coffee coffee) {
        super(coffee);
    }

    @Override
    public double cost() {
        return coffee.cost()+10;
    }

    @Override
    public String getDescription() {
        return coffee.getDescription()+" Milk ";
    }
}
class WhipCoffee extends CoffeeDecorator{
    WhipCoffee(Coffee coffee) {
        super(coffee);
    }

    @Override
    public double cost() {
        return coffee.cost()+15;
    }

    @Override
    public String getDescription() {
        return coffee.getDescription()+" Whip ";
    }
}
class CaramelCoffee extends CoffeeDecorator{
    CaramelCoffee(Coffee coffee) {
        super(coffee);
    }

    @Override
    public double cost() {
        return coffee.cost()+20;
    }

    @Override
    public String getDescription() {
        return coffee.getDescription()+" Caramel ";
    }
}

