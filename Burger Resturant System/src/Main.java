import java.awt.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class Main {

    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
       BurgerMenu menu = new BurgerMenu();
        AdditionsMenu additions = new AdditionsMenu();


        menu.addToMenu(new Burger("Beef Burger", 80));
        menu.addToMenu(new Burger("Chicken Burger", 75));
        menu.addToMenu(new Burger("Cheese Burger", 60));



        additions.addToMenu(new Additions("Ketchup", 5));
        additions.addToMenu(new Additions("Mayonnaise", 10));
        additions.addToMenu(new Additions("Tomatoes", 5));
        additions.addToMenu(new Additions("Cheese", 15));
        System.out.println("Please choose your role \n 1 - Admin \n 2- User");
        int choice= scanner.nextInt();
        if (choice==1){
            AdminMain adminMain =new AdminMain(menu,additions);
            adminMain.adminAccess();
            System.out.println("Continue as a user");
            UserMain userMain = new UserMain(menu, additions);
            userMain.viewMenu();
        }else {
            UserMain userMain = new UserMain(menu, additions);
            userMain.viewMenu();

        }


    }


}
