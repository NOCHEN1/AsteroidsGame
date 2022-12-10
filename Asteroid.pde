class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*7)-3;
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-14};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = Math.random()*3-1;
    myYspeed = Math.random()*3-1;
    myPointDirection = Math.random()*360;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void show(){
    noStroke();
    fill(220,220,220);
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++){     
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setXspeed(double x) {myXspeed = x;}
  public double getXspeed(){return myXspeed;}
  public void setYspeed(double y) {myYspeed = y;}
  public double getYspeed(){return myYspeed;}
  public void setPointDirection(int degrees)  {myPointDirection = degrees;}
  public double getPointDirection() {return (int)myPointDirection;}
}
