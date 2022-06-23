import java.util.* ;
public class SelectionStatement
{
 public static void main(String args[])
  {
   IfDemo();
  }
  static void IfDemo()
 {
  int age;
  Scanner scan = new Scanner(System.in);
  prt("Enter your age");
  age = scan.nextInt();
  if(age<13)
  {
   prt("You are a child");
  }
 }

static void prt(String str)
{
 System.out.println(str);
}
}

 