class Compass
{
  float x,y;
  char[] c = {'N', 'E', 'S','W'};
  int count;
  int compwidth, compheight;
  float interval;
  float px;
  
  Compass(float y)
  {
    this.y = y;
    compwidth = 2*(width-100);
    px = (width/2)-(compwidth/2);
    compheight = 70;
    interval = compwidth/16;
  }
  
  void update()
  {
    x = px + ((width/2)-mouseX);
  }
  
  void render()
  {
    fill(0);
    stroke(0,200,255);
    count = 0;
    rect(x,y,compwidth,compheight);
    fill(255);
    for(int i = 1; i<=16; i++)
    {
      int tick = 2;
      if(i%4==2)
      {
        tick = 6;
        text(c[count],x+i*interval,y+compheight/2);
        if(count<3)
        {
          count++;
        }
      }
      line(x+i*interval,y,x+i*interval,y+tick);
    }
  }
  
}