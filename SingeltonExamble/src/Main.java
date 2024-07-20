public class Main {
    static String level = null;
    static String res= null;

    static String volume=null;


    public static void main(String[] args) {

        level = "hard";
        res = "100*720";

       GameSetting d = GameSetting.getInstance(level,res,volume);

        System.out.println(d.level);
       level ="easy";
       res ="500*500";

        GameSetting c = GameSetting.getInstance(level,res,volume);
        System.out.println(d.level);
        System.out.println(d==c);
    }
}