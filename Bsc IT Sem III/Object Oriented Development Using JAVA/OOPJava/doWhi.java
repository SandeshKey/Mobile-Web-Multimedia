import  java.util.* ;
class doWhi {
  public static void main(String[] args) {
    
    String yep;
    Scanner scan = new Scanner(System.in);
    int n, neg=0, pos=0, zero=0;
    
    do
    {
      n = scan.nextInt();
      if(n<0)
      {
        neg++;
      }
      else if(n==0){
        zero ++;
      }
      else
      {
        pos++;
      }
      System.out.println("Do you wanr to continue?");
      yep=scan.next();
    }
    while(yep.compareTo("n") !=0 && yep.compareTo("N")!=0);
    
    System.out.println("Total +ve :" + pos);
    System.out.println("Total -ve :" + neg);
    System.out.println("Total 0s :" + zero);
    
  }
}