class FactoryBeefBurger extends FactoryBurger {

    @Override
    Burger createBurger() {
        return new BeefBurger();
    }
}
