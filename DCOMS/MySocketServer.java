import java.io.*;
import java.net.*;

public class MySocketServer{
    public static void main(String[] args){
        try{
            ServerSocket ss = new ServerSocket(8888);
            Socket s = ss.accept();
            DataInputStream dis = new DataInputStream(s.getInputStream());
            String str = (String)dis.readUTF();
            System.out.println("message = "+str);
            ss.close();
        }
        catch(Exception e){
            System.out.println(0);
        }
    }
}