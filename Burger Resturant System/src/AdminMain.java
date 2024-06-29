import java.util.Scanner;

public class AdminMain {
    Scanner scanner = new Scanner(System.in);

    private BurgerMenu menu;
    private AdditionsMenu additions;

    AdminMain(BurgerMenu menu, AdditionsMenu additions){
        this.menu = menu;
        this.additions = additions;
    }
    void adminAccess(){
        System.out.println("1- View Menu");
        System.out.println("2- View Additions");
        System.out.println("3- Add New Item to Menu");
        System.out.println("4- Add New Addition");
        System.out.println("5- Delete Item from Menu");
        System.out.println("6- Delete Addition ");
        System.out.println("7- Exist");
        int option = scanner.nextInt();
        if (option==1){
            menu.showMenu();
        } else if (option == 2) {
            additions.showMenu();
        } else if (option == 3) {
            System.out.println("New Sandwich : \n");
            System.out.println("Enter name");
           String name= scanner.next();
            System.out.println("Enter price");
            int price= scanner.nextInt();
            menu.addToMenu(new Burger(name,price));
            System.out.println("Sandwich added to the menu.");
        } else if (option == 4) {
            System.out.println("New Addition : \n");
            System.out.println("Enter name");
            String name= scanner.next();
            System.out.println("Enter price");
            int price= scanner.nextInt();
            additions.addToMenu(new Additions(name,price));
            System.out.println("Addition added to the menu.");
        } else if (option==5) {
            System.out.println("Enter name:");
            String itemName =scanner.nextLine();
            menu.removeSandwich(itemName);
        }else if (option==6) {
            System.out.println("Enter name:");
            String itemName =scanner.nextLine();
            additions.removeAddition(itemName);
        }else
            return;

    }

}
