public class NavigationApp implements RouteStrategy{

     private RouteStrategy routeStrategy;
    public void setRouteStrategy(RouteStrategy routeStrategy) {
        this.routeStrategy = routeStrategy;
    }
    @Override
    public void buildRoute(String start, String end) {
        routeStrategy.buildRoute(start,end);
    }


}
