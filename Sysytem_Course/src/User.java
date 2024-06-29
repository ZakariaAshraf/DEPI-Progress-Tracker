import java.util.Scanner;

public class User {
    final String name;
    final String role;

    public User(String name, String role) {

        this.name = name;
        this.role = role;
        Scanner scanner = new Scanner(System.in);// Create a Scanner
        System.out.println("Welcome " + name + " your role is : " + role);
        System.out.println("please enter email username");
        String user = scanner.next();
        System.out.println("enter email password");
        String pass = scanner.next();
       boolean isValidstu= isValidUser(user, pass, Data.instructors,role);
      boolean isValidinst=  isValidUser(user, pass, Data.students,role);
        if (isValidinst ||isValidstu){
           showMenuCourses(role);
        }else
            System.out.println("invalid");

    }
    /////////////////////////////// MAKE A ONE METHOD TO SHOW MENU\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    private void showMenuCourses(String role) {
        switch (role) {
            case "student":
                System.out.println("as a Student your course is\n1 - java\n2 - Android\n 3 - Flutter  ");
                break;
            case "instructor":
                System.out.println("as a instructor your course is\n1 - route inst \n2 - WE inst\n 3 - Erp inst ");
                break;
        }

    }
    /////////////////////////////////// MAKE A ONE METHOD TO VALIDATION \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    static boolean isValidUser(String userName, String pass, String[][] users,String role) {
        for (String[] currentUser : users) {
            if (userName.equals(currentUser[0])&&pass.equals(currentUser[1])){
                return true;
            }
        }
        return false;
    }

}
