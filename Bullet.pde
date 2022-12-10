class Bullet extends Floater{
  public Bullet (Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myXspeed = 5 * Math.cos(dRadians) + theShip.getXspeed(); 
    myYspeed = 5 * Math.sin(dRadians) + theShip.getYspeed();
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    accelerate(.8);
  }

  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y)  {myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setXspeed(double x) {myXspeed = x;}
  public double getXspeed()  {return myXspeed;}
  public void setYspeed(double y) {myYspeed = y;}
  public double getYspeed()  {return myYspeed;}
  public void setPointDirection(int degrees)  {myPointDirection = degrees;}
  public double getPointDirection() {return (int)myPointDirection;}

  public void show(){
    fill(myColor);   
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }

  public void move()
  {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }  
}
