package Factory;

public class TestMain {
    public static void main(String[] args) {


        CharacterFactory characterFactory1 =new CharacterFactory();
        Character f1 =characterFactory1.createCharacter("Archer");
        f1.getDescription();



        CharacterFactory characterFactory2 =new CharacterFactory();
        Character f2 =characterFactory2.createCharacter("Mage");
        f2.getDescription();


        CharacterFactory characterFactory3 =new CharacterFactory();
        Character f3 =characterFactory3.createCharacter("Warrior");
        f3.getDescription();

        CharacterFactory characterFactory4 =new CharacterFactory();
        Character nullll =characterFactory4.createCharacter("Ay Kalam");
        nullll.getDescription();
    }
}
