package Adabter;

public class TestMain {
    public static void main(String[] args) {
        MediaPlayer mediaPlayer =new oldTypeMediaPlayer();
        mediaPlayer.play("Essam Sasa");
        NewMediaGeneration newMediaGeneration =new NewMediaGeneration();
        MediaPlayer m1 =new MediaAdapter(newMediaGeneration);
        m1.play("Essam Sasa");
    }
}
