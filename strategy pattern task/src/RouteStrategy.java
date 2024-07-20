public interface RouteStrategy {

    void buildRoute(String start,String end);
}
class WalkingRoute implements RouteStrategy{
    @Override
    public void buildRoute(String start, String end) {
        System.out.println("go to "+end+" from "+start +" by Walking \n");
    }
}
class TransportRoute implements RouteStrategy{
    @Override
    public void buildRoute(String start, String end) {
        System.out.println("go to "+end+" from "+start +" by Transport \n");
    }
}class CarRoute implements RouteStrategy{
    @Override
    public void buildRoute(String start, String end) {
        System.out.println("go to "+end+" from "+start +" by Car \n");
    }
}class BicycleRoute implements RouteStrategy{
    @Override
    public void buildRoute(String start, String end) {
        System.out.println("go to "+end+" from "+start +" by Bicycle \n");
    }
}