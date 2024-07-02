class FactoryChickenBurger extends FactoryBurger {

    @Override
    Burger createBurger() {
        return new ChickenBurger();
    }
}
