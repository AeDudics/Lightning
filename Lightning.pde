PImage img;

int startX = (int)(Math.random() * 251) + 10;
int startY = 0;
int endX = 250;
int endY = 0;

void setup()
{
  size(500,500);
  strokeWeight(5);
  stroke((int)Math.random() * 256,(int)Math.random() * 256,255);
  img = loadImage("ltg.jpg");
}

void draw()
{
  image(img, 0 ,0);
  fill(0,0,0,15);
  rect(0,0,500,500);
  while(endX < 501)
    {
    endX = startX + ((int)(Math.random() * 19) - 9);
    endY = startY + ((int)(Math.random() * 10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    }
}
void mousePressed()
{
startX = (int)(Math.random() * 251) + 10;
startY = 0;
endX = 250;
endY = 0;
}
