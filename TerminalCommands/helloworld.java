class helloworld{
  public static void main(String[] args){
    while(true){
      System.out.println("Hello world");
      try{
      Thread.sleep(100000);
      }catch(Exception e){}
    }
  }
}