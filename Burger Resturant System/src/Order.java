import java.util.List;
import java.util.Scanner;

public class Order {
    Burger sandwich;
    List<Additions>additions;
    private UserMain userMain;
    Scanner scanner = new Scanner(System.in);
    Order(Burger sandwich , List<Additions>additions){
        this.sandwich = sandwich;
        this.additions = additions;
    }
    public int calculateTotalPrice(){
        int price = sandwich.getPrice();
        for (Additions addition1 : additions) {
            price+=addition1.getPrice();
        }
        return price;
    }
    public void showReceipt() {
        System.out.println("Receipt : \n\n");
        System.out.println(sandwich.getName()+" \t " + sandwich.getPrice());
        for (Additions addition : additions) {
            System.out.println( addition.getName()+ " \t " + addition.getPrice());
        }
        System.out.println("Total : "+calculateTotalPrice());
        System.out.println("1-Back to Menu");
        System.out.println("2-Exit");
        int choice = scanner.nextInt();
        if (choice==1){
                    userMain.viewMenu();
        }

    }
}
