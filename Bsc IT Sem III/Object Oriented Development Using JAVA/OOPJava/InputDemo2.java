import java.io.*;

public class InputDemo2
{
 public static void main(String args[])throws IOException
 {
  String name;
  int age;
  BufferedReader read = new BufferedReader(new InputStreamReader(System.in));
  System.out.println("Enter your Name:");
  name = read.readLine();
  System.out.println("Enter your age: ");
  age = Integer.parseInt(read.readLine());
  System.out.println("Your name: " + name + "\n Your age:" + age);
 }
}