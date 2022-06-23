import java.io.*;
public class Handle
{
 public static void main(String [ ]args) throws IOException
 {
  File f1 = new File("/Users/sandeshkey/Desktop/File Handling/heyhey.txt");
  f1.createNewFile();
  System.out.println("Exist : "+ f1.exists());
  System.out.println("Length :"+ f1.length());
 }
}