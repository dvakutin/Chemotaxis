Bacteria[] pie = new Bacteria[150];
void setup()
{
  size(600, 600);
  background(144, 226, 255);
  //fill(255, 0, 0);
  //stroke(255, 0, 0);
  //ellipse(300, 300, 100, 100);
  for(int i = 0; i < pie.length; i++)
  {
    pie[i] = new Bacteria();
  }
}
void draw()
{
  for(int i = 0; i < pie.length; i++)
  {
    if(pie[i].mySize > 30)
    {
      pie[i].moveslow();
      pie[i].show();
    }
    if(pie[i].mySize >= 20 && pie[i].mySize <= 30)
    {
      pie[i].moveneutral();
      pie[i].show();
    }
    if(pie[i].mySize < 20)
    {
      pie[i].movefast();
      pie[i].show();
    }
    
  }
}

class Bacteria
{
  int Color;
  int x;
  int y;
  int mySize;
  Bacteria()
  {
    Color = color((int)(Math.random()* 256), (int)(Math.random()* 256), (int)(Math.random()* 256));
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    mySize = (int)(Math.random() * 40) + 10;
  }
  void moveneutral()
  {
    fill(144, 226, 255);
    noStroke();
    ellipse(x, y, mySize + 5, mySize + 5);
    x = x + (int)(Math.random() * 30) - 15;
    y = y + (int)(Math.random() * 30) - 15;
  }
  void moveslow()
  {
    fill(144, 226, 255);
    noStroke();
    ellipse(x, y, mySize + 5, mySize + 5);
    x = x + (int)(Math.random() * 10) - 5;
    y = y + (int)(Math.random() * 10) - 5;
  }
  void movefast()
  {
    fill(144, 226, 255);
    noStroke();
    ellipse(x, y, mySize + 5, mySize + 5);
    x = x + (int)(Math.random() * 200) - 100;
    y = y + (int)(Math.random() * 200) - 100;
  }
  void show()
  {
    if(x >= 600) 
    {
      x = 0;
      y = 600;
    }
    if(y >= 600) 
    {
      x = 600;
      y = 0;
    }
    if(y <= 0)
    {
      x = 0;
      y = 0;
    }
    if(x <= 0)
    {
      x = 600;
      y = 600;
    }
  fill(Color);
      stroke(Color);
      ellipse(x, y, mySize, mySize);
  }
} 
