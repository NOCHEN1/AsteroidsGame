class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    myColor = 254;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360);
  }
}
