int sum;
void setup()
{
  noLoop();
  size(650,650);
}
void draw()
{
  background(238,204,255);
  for (int y=20;y<500; y+=190)
  {
    for (int x=35; x<600; x+=200)
    {
     Die bob= new Die(x,y);
     bob.show();
    }
  }
  text("Sum: " + sum, 325, 625);
}
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
  
  int myX, myY,myDots;
  Die(int x, int y) //constructor
  {
    myX= x;
    myY=y;
    roll();
  }
  void roll()
  {
    
    myDots=(int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(myX,myY,175,175);
    fill(255,0,0);
    if (myDots==1)
      ellipse(myX+90,myY+90,40,40);
      sum += 1;
    if(myDots==2)
      {
      ellipse(myX+50,myY+40,40,40);
      ellipse(myX+120,myY+140,40,40);
      sum += 2;
    }
    if(myDots==3)
    {
      ellipse(myX+50,myY+40,40,40);
      ellipse(myX+120,myY+140,40,40);
      ellipse(myX+85,myY+90,40,40);
      sum += 3;
    }
    if(myDots==4)
    {
      ellipse(myX+50,myY+40,40,40);
      ellipse(myX+120,myY+140,40,40);
      ellipse(myX+120,myY+40,40,40);
      ellipse(myX+50,myY+140,40,40);
      sum += 4;
    }
    if(myDots==5)
    {
      ellipse(myX+50,myY+40,40,40);
      ellipse(myX+120,myY+140,40,40);
      ellipse(myX+120,myY+40,40,40);
      ellipse(myX+50,myY+140,40,40);
      ellipse(myX+85,myY+90,40,40); 
      sum += 5;
    }
    if(myDots==6)
    {
      ellipse(myX+50,myY+40,40,40);
      ellipse(myX+120,myY+140,40,40);
      ellipse(myX+120,myY+40,40,40);
      ellipse(myX+50,myY+140,40,40);
      ellipse(myX+50,myY+90,40,40);
      ellipse(myX+120,myY+90,40,40);
      sum += 6;
    }
  }
}
