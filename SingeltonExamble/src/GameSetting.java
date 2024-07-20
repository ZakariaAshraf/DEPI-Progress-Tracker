public class GameSetting {
    private static volatile GameSetting instance;
    String level;
    String screenResolution;

    String volume;

    private GameSetting(String level , String screenResolution,String volume){
        this.level=level;
        this.screenResolution=screenResolution;
        this.volume=volume;
    }

    public static GameSetting getInstance(String level,String screenResolution,String volume) {

        GameSetting setting = instance;
        if (setting == null) {
            synchronized (GameSetting.class) {
                if (setting == null) {
                  setting=instance = new GameSetting(level, screenResolution,volume);
                }
                return instance;
            }
        }
        return instance;
    }
}
