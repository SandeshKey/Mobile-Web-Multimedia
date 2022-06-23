import java.util.*;

public class InputDemo
{
 public static void main(String args[])
 {
  String name;
  int age;
  Scanner scan = new Scanner(System.in);
  System.out.println("Enter your name:");
  name=scan.next();
  System.out.println("Enter your age:");
  age=scan.nextInt();
  System.out.println("\n\n");
  System.out.println("Your name is" + name);
  System.out.println("Your age is" + age);
 }
}
