class SmallAsteroid extends Asteroid{
  private int rotSpeed;
  public SmallAsteroid(){
    rotSpeed = (int)(Math.random()*7)-3;
    corners = 5;
    xCorners = new int[]{-5,0,4,2,-7};
    yCorners = new int[]{-4,-5,-1,5,3};
    myCenterX = super.getX();
    myCenterY = super.getY();
    myXspeed = super.getXspeed();
    myYspeed = super.getYspeed();
    myPointDirection = super.getPointDirection();
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
