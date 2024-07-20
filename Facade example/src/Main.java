public class Main {
    public static void main(String[] args) {
        DvdPlayer dvd = new DvdPlayer();
        LightSystem l1 = new LightSystem();
        Projector p1 = new Projector();
        Screen s1 = new Screen();

        HomeTheatreFacade f1 = new HomeTheatreFacade(dvd,s1,l1,p1);
        f1.playHomeTheater("Film Teto ","on","Blue","on");

        f1.TurnOffHomeTheater("off","off");
    }
}