void setup()
{
  size(750, 800);
  noLoop();
}
int counter;
void draw()
{
  background(191, 220, 255);
  for (int x = 75; x < width; x+=150) {
    for (int y = 75; y < height; y+=150) {
      Die dice = new Die(x, y);//your code here
      dice.show();
      dice.roll();
      counter += dice.num;
    }
  }
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Sum = " + counter, 0, 750, width, 50);
  counter = 0;
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
    num = (int)(Math.random()*6+1);
    if (num == 1 || num == 3 || num == 5) {
      fill(0, 0, 0);
      ellipse(xpos, ypos, size/5, size/5);
      if (num == 3 || num == 5) {
        fill(0, 0, 0);
        ellipse(xpos - size/4, ypos - size/4, size/5, size/5);
        ellipse(xpos + size/4, ypos + size/4, size/5, size/5);
        if (num == 5) {
          ellipse(xpos + size/4, ypos - size/4, size/5, size/5);
          ellipse(xpos - size/4, ypos + size/4, size/5, size/5);
        }
      }
    } else {
      fill(0, 0, 0);
      ellipse(xpos - size/4, ypos - size/4, size/5, size/5);
      ellipse(xpos + size/4, ypos + size/4, size/5, size/5);
      if (num == 4 || num == 6) {
        ellipse(xpos + size/4, ypos - size/4, size/5, size/5);
        ellipse(xpos - size/4, ypos + size/4, size/5, size/5);
        if (num == 6) {
          ellipse(xpos + size/4, ypos, size/5, size/5);
          ellipse(xpos - size/4, ypos, size/5, size/5);
        }
      }
    }
  }
  void show()
  {
    fill(255, 255, 255);//your code here
    rect(xpos - size/2, ypos - size/2, size, size);
  }
}
