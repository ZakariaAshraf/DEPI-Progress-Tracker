import java.util.*;
public class UserMain {

    Scanner scanner = new Scanner(System.in);

    private BurgerMenu menu;
    private AdditionsMenu additions;


    public UserMain(BurgerMenu menu, AdditionsMenu additions) {
        this.menu = menu;
        this.additions = additions;
    }


    public void viewMenu() {
        menu.showMenu();
        System.out.println("please select an option ");
        int type = scanner.nextInt();
        Burger sandwich = menu.getSandwiches().get(type-1);

        System.out.println("Do you like to add any additions : ");
        System.out.println("1 - Yes \n2 - No");
        int opinion = scanner.nextInt();
        List<Additions> selectedAdditions = new ArrayList<>();
        if (opinion == 1) {

            additions.showMenu();

            System.out.println("Please select options (like this 1,2):");
            scanner.nextLine(); // Consume newline
            String[] additionOptions = scanner.nextLine().split(",");
            for (String option : additionOptions) {  //convert it to int
                selectedAdditions.add(additions.getAdditions().get(Integer.parseInt(option.trim()) - 1));
            }
        }
        System.out.println("your order is : \n" + sandwich.getName());
        for (Additions additions1 :selectedAdditions){
            System.out.println(additions1.getName());
        }
        System.out.println("1 - Confirm \n2 - Back to menu");
        int confirmation = scanner.nextInt();
        if (confirmation==1){
            Order order=new Order(sandwich,selectedAdditions);
           order.showReceipt();
        }

    }
}