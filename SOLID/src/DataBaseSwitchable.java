
//Dependency Inversion (DIP)


public interface DataBaseSwitchable {
    public void connect();
    public void disconnect();
}
 class Application implements DataBaseSwitchable{

     @Override
     public void connect() {

     }

     @Override
     public void disconnect() {

     }

 }
  class Switch{
  private DataBaseSwitchable app;
  public Switch(DataBaseSwitchable app){
      this.app=app;
  }
  public void run(){
        app.connect();
        app.disconnect();
  }

 }
