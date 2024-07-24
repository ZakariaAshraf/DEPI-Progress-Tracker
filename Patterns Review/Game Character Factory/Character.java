package Factory;

public interface Character {
    void attack();

    void defend();

    void getDescription();
}

class Warrior implements Character {
    @Override
    public void attack() {
        System.out.println("Warrior Attack");
    }

    @Override
    public void defend() {
        System.out.println("Warrior defend");
    }

    @Override
    public void getDescription() {
        System.out.println("tall and good horse rider");
    }
}

class Mage implements Character {
    @Override
    public void attack() {
        System.out.println("Mage Attack");
    }

    @Override
    public void defend() {
        System.out.println("Mage defend");
    }

    @Override
    public void getDescription() {
        System.out.println("very intelligent");
    }
}

class Archer implements Character {
    @Override
    public void attack() {
        System.out.println("Archer Attack");
    }

    @Override
    public void defend() {
        System.out.println("Archer defend");
    }

    @Override
    public void getDescription() {
        System.out.println("have good eyes");
    }
}

class CharacterFactory {
    public Character createCharacter(String characterType) {
        if (characterType == null) {
            return null;
        }
        switch (characterType) {
            case "Archer":
                return new Archer();

            case "Mage" :
                return new Mage();

            case "Warrior":
                return new Warrior();

            default:
                throw new IllegalArgumentException("Unknown character type: " + characterType);

        }
    }
}



