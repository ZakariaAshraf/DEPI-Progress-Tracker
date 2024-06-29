import java.util.ArrayList;
import java.util.List;
public class AdditionsMenu {
    private List<Additions> AdditionsMenu;
    public AdditionsMenu(){
        AdditionsMenu=new ArrayList<>();
    }
    public void addToMenu(Additions addition)
    {
        AdditionsMenu.add(addition);
    }
    public void removeAddition(String addition){
        AdditionsMenu.remove(addition);
    }
    public List<Additions> getAdditions() {
        return AdditionsMenu;
    }
    public void showMenu(){
        int i =1;
        for (Additions addition : AdditionsMenu) {
            System.out.println(i++ + "-\t" + addition.getName()); //+ " - " +addition.getPrice()
        }
    }



}
