package Abstract_Factory;

public interface Character {
    String getDescription();
}

interface Weapon {
    String getDescription();
}

interface Vehicle {
    String getDescription();
}

class Archer implements Character {
    @Override
    public String getDescription() {
        return "Archer";
    }
}

class Mage implements Character {
    @Override
    public String getDescription() {
        return "Mage";
    }
}

class Warrior implements Character {
    @Override
    public String getDescription() {
        return "Warrior";
    }
}

class Knife implements Weapon {
    @Override
    public String getDescription() {
        return "Knife";
    }
}

class Sword implements Weapon {
    @Override
    public String getDescription() {
        return "Sword";
    }
}

class Sticks implements Weapon {
    @Override
    public String getDescription() {
        return "Sticks";
    }
}


class Horse implements Vehicle {
    @Override
    public String getDescription() {
        return "Horse ";
    }
}
class Car implements Vehicle {
    @Override
    public String getDescription() {
        return "Car ";
    }
}



interface GameElementFactory {
    Character createCharacter();

    Weapon createWeapon();

    Vehicle createVehicle();
}

class MedievalFactory implements GameElementFactory {
    @Override
    public Character createCharacter() {
        return new Mage();
    }

    @Override
    public Weapon createWeapon() {
        return new Sticks();
    }

    @Override
    public Vehicle createVehicle() {
        return new Car();
    }
}

class FuturisticFactory implements GameElementFactory {
    @Override
    public Character createCharacter() {
        return new Warrior();
    }

    @Override
    public Weapon createWeapon() {
        return new Sword();
    }

    @Override
    public Vehicle createVehicle() {
        return new Horse();
    }
}

class Game {
    private GameElementFactory factory;

    Game(GameElementFactory factory) {
        this.factory = factory;
    }

    public void createGame() {
        System.out.println("character of this game is : " + factory.createCharacter().getDescription()+" , " + " Weapon is : " + factory.createWeapon().getDescription()+" , " + " Vehicle is : " + factory.createVehicle().getDescription());
    }

}

class TestMain{
    public static void main(String[] args) {
        GameElementFactory medievalFactory =new MedievalFactory();
        Game firstGame= new Game(medievalFactory);
        System.out.println("Medieval:");
        firstGame.createGame();

        GameElementFactory futuristicFactory = new FuturisticFactory();
        Game futuristicGame = new Game(futuristicFactory);
        System.out.println("\nFuturistic Game:");
        futuristicGame.createGame();
    }
}
