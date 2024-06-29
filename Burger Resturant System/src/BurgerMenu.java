import java.util.ArrayList;
import java.util.List;

public class BurgerMenu {
    private List<Burger>sandwiches;
    public BurgerMenu(){
            sandwiches=new ArrayList<>();
    }
   public void addToMenu(Burger sandwich)
    {
            sandwiches.add(sandwich);
    }
    public void removeSandwich(String sandwich){
        sandwiches.remove(sandwich);
    }
    public List<Burger> getSandwiches() {
        return sandwiches;
    }
    public void showMenu(){
        int i =1;
        for (Burger sandwich : sandwiches) {
            System.out.println(i++ + "-\t" + sandwich.getName()); //+ " - " + sandwich.getPrice()
        }
    }



}
