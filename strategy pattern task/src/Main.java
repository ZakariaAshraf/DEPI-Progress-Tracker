public class Main {
    public static void main(String[] args) {
        NavigationApp n1 =new NavigationApp();
        n1.setRouteStrategy(new BicycleRoute());
        n1.buildRoute("Cairo","Giza");
        n1.setRouteStrategy(new CarRoute());
        n1.buildRoute("Alex","Benha");
        n1.setRouteStrategy(new WalkingRoute());
        n1.buildRoute("Home","SuperMarket");



    }
}