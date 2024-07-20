public class HomeTheatreFacade {

     private DvdPlayer dvdPlayer;
    private Screen screen;
   private LightSystem lightSystem;
    private Projector projector;
    HomeTheatreFacade(DvdPlayer dvdPlayer ,Screen screen ,LightSystem lightSystem , Projector projector){
        this.dvdPlayer =dvdPlayer;
        this.screen = screen;
        this.lightSystem=lightSystem;
        this.projector =projector;

    }

    void playHomeTheater(String FilmNAME ,String screenOpretion,String lightSystemColor,String projectorOperator){
        System.out.println(dvdPlayer.play(FilmNAME));
        System.out.println(screen.on(screenOpretion));
        System.out.println(lightSystem.colorPlay(lightSystemColor));
        System.out.println(projector.on(projectorOperator));
    }
    void TurnOffHomeTheater(String screenOperation,String projectorOperation){
        System.out.println("Screen is "+screen.off("off"));
        System.out.println("projector is "+projector.off("off"));
        System.out.println("Home theater turned Off");
    }


}
