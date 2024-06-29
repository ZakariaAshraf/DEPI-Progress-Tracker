import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Create a Scanner

        System.out.println("????????????????????Welcome to Courses System????????????????????\nto enter your courses please make this steps.....");
          System.out.println("Enter Your Name ...");
        String user = scanner.next();
        System.out.println("Enter Role ... \n- student \n- instructor");
        String role = scanner.next();
        User user1=new User(user,role);

    }

}