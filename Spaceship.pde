class Spaceship extends Floater  
{   
  public Spaceship(){
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
    myCenterX = myCenterY = 300;
    myXspeed = myYspeed = 0;
    myPointDirection = -90;
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
  public double getPointDirection(){return myPointDirection;}
  public void hyperspace(){
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
}
