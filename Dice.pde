
int dotColorR;
int dotColorG;
int dotColorB;
int sumOfDots = 0;
void setup()
{
  noLoop();
  size(450, 450);
}
Die bob;
void draw()
{
  background(0, 46, 108);
  //int x = 125;
  //int y = 125;
 // bob = new Die(x, y);
  for (int y = 50; y <= 300; y = y + 100)
  {
    for (int x = 100; x <= 300; x = x + 100)
    {
      bob = new Die(x, y);
      bob.show();
    }
  }
  fill(255);
  textSize(50);
  text("The total is " + sumOfDots, 50, 400);
}
void mousePressed()
{
  redraw();
  sumOfDots = 0;
}
class Die //models one single dice cube
{
  //member variable declarations here
  int one;
  int myX, myY;
  int numberOfDots;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    numberOfDots = (int)(Math.random()*6) + 1;
    sumOfDots = sumOfDots + numberOfDots;
    dotColorR = (int)(Math.random()*256);
    dotColorG = (int)(Math.random()*256);
    dotColorB = (int)(Math.random()*256);
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50);
    fill(dotColorR, dotColorG, dotColorB);
    if (numberOfDots == 1) //roll one
      ellipse(myX + 25, myY+25, 12, 12); 
    else if (numberOfDots == 2) { //roll two
      ellipse(myX + 15, myY+15, 12, 12); 
      ellipse(myX + 35, myY+35, 12, 12);
    } else if (numberOfDots == 3) { //roll three
      ellipse(myX + 11, myY + 11, 12, 12);
      ellipse(myX + 25, myY + 25, 12, 12);
      ellipse(myX + 39, myY + 39, 12, 12);
    } else if (numberOfDots == 4) { //roll four
      ellipse(myX + 11, myY + 11, 12, 12);
      ellipse(myX + 39, myY + 11, 12, 12);
      ellipse(myX + 39, myY + 39, 12, 12);
      ellipse(myX + 11, myY + 39, 12, 12);
    } else if (numberOfDots == 5) { //roll five
      ellipse(myX + 11, myY + 11, 12, 12);
      ellipse(myX + 39, myY + 11, 12, 12);
      ellipse(myX + 39, myY + 39, 12, 12);
      ellipse(myX + 11, myY + 39, 12, 12);
      ellipse(myX + 25, myY + 25, 12, 12);
    } else if (numberOfDots == 6) { //rollsix
      ellipse(myX + 11, myY + 11, 12, 12);
      ellipse(myX + 39, myY + 11, 12, 12);
      ellipse(myX + 39, myY + 39, 12, 12);
      ellipse(myX + 11, myY + 39, 12, 12);
      ellipse(myX + 11, myY + 25, 12, 12);
      ellipse(myX + 39, myY + 25, 12, 12);
    }
  }
}
