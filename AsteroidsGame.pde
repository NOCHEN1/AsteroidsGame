Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
int x,y;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  frameRate(120);
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  bob.move();
  bob.show();
  noStroke();
  fill(255);
}
public void mouseClicked()
{
  x = mouseX;
  y = mouseY;
  //small
  if(key == 'm'){
    ellipse(x,y,5,5);
  }
  if(key == 'n'){
    ellipse(x,y,10,10);
  }
}   
public void keyPressed(){
  //turn
  if(key == 'a' || keyCode == LEFT){
    bob.turn(-15);
  }
  if(key == 'd' || keyCode == RIGHT){
    bob.turn(15);
  }
  //move
  if(key == 'w' || keyCode == UP){
    bob.accelerate(.5);
  }
  if(key == 's' || keyCode == DOWN){
    bob.accelerate(-.2);
  }
  //limit speed
  if(bob.myXspeed > 10){
    bob.myXspeed = 10;
  }
  if(bob.myXspeed < -10){
    bob.myXspeed = -10;
  }
  if(bob.myYspeed > 10){
    bob.myYspeed = 10;
  }
  if(bob.myYspeed < -10){
    bob.myYspeed = -10;
  }
  //random place
  if(key == 'r'){
    bob.hyperspace();
  }
  //stop
  if(key == 'q'){
    bob.myXspeed = 0;
    bob.myYspeed = 0;
  }
}
