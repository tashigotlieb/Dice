int diceTotal =0;
int x=0;
  int diceRoll;
void setup()
{
  noLoop();
  size(1000,1000);
}
void draw()
{
 noFill();
  background(0,120,128);

for(int x = 0; x<1000; x= x+50) {
  for(int y =0; y<950; y= y+50) {
    Die Dice = new Die(x,y);
    Dice.roll();
    Dice.show();
}
}
  fill(0, 255, 255);
  textSize(20);
  text("Dice Total is: " + diceTotal%10000,500,990);

}
void mousePressed()
{
  noFill();
  redraw();
  diceTotal =0; 
}
class Die //models one single dice cube
{
  int myX;
  int myY;

  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    diceRoll =0;
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
   noFill();
   diceRoll =(int)(Math.random()*6)+1;
   diceTotal += diceRoll;
    //your code here
  }
 int myXextra =0;
 int myYextra =0;
  void drawDot(int myXextra,int myYextra) {
    fill(0);
    circle(myX+myXextra,myY+myYextra,8);

}
  void show()
  {
   noFill();
    square(myX,myY,50);
   if(diceRoll == 1) {
     drawDot(25,25);
   } else if (diceRoll ==2) {
     drawDot(20,25);
     drawDot(35,25);
  }else if (diceRoll ==3) {
     drawDot(20,30);
     drawDot(35,30);
     drawDot(27,19);
  }else if (diceRoll ==4) {
     drawDot(40,15);
     drawDot(15,15);
     drawDot(40,40);
     drawDot(15,40);
  }else if (diceRoll ==5) {
     drawDot(40,15);
     drawDot(15,15);
     drawDot(40,40);
     drawDot(15,40);
     drawDot(27,27);
  } else {
     drawDot(40,13);
     drawDot(15,13);
     drawDot(40,43);
     drawDot(15,43);
     drawDot(15,27);
     drawDot(40,27);
  }
}

}
