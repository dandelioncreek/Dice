void setup()
{
  size(450, 600);
  noLoop();
}
int counter;
void draw()
{
  counter = 0;
  background(191, 220, 255);
  for (int x = 75; x < 525; x+=150) {
    for (int y = 75; y < 525; y+=150) {
      Die dice = new Die(x, y);//your code here
      dice.roll();
      dice.show();
      counter += dice.num;
    }
  }
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Sum = " + counter, 0, 450, width, 50);
  
  if (counter <= 15){
    textSize(20);
    textAlign(CENTER, CENTER);
    text("qeawtfgh" + counter, 0, 500, width, 50);
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int size, xpos, ypos, num;//member variable declarations here

  Die(int x, int y) //constructor
  {
    size = 150;
    xpos = x;
    ypos = y;
    //variable initializations here
  }
  void roll()
  {
    num = (int)(Math.random()*4+1);
  }
  void show()
  {
    fill((int)(Math.random()*128)+128, (int)(Math.random()*128)+128, (int)(Math.random()*128)+128);//your code here
    triangle(xpos, ypos-size/2, xpos - size/2, ypos+size/2, xpos + size/2, ypos+size/2);
    //rect(xpos - size/2, ypos - size/2, size, size);
    textSize(30);
    textAlign(CENTER, CENTER);
    fill (0,0,0);
    text("" + num, xpos - size/2, ypos - size/2, size, size);
  }
}
