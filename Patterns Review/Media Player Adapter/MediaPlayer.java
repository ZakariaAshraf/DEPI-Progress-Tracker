package Adabter;

public interface MediaPlayer {
    void play(String fileName);
}

class oldTypeMediaPlayer implements MediaPlayer {
    @Override
    public void play(String fileName) {
        System.out.println("old type media player" + fileName);
    }
}

class NewMediaGeneration {
    void play(String fileName) {
        System.out.println("New Media Generation" + fileName);
    }
}

class MediaAdapter implements MediaPlayer {
    NewMediaGeneration newMediaGeneration;

    MediaAdapter(NewMediaGeneration newMediaGeneration) {
        this.newMediaGeneration = newMediaGeneration;
    }

    @Override
    public void play(String fileName) {
        newMediaGeneration.play(fileName);
    }
}

