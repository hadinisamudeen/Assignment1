class Burst extends Radar
{
  int x;
  int y;
  int burstdia;
  color c;
  float xmap = map(mouseX,0,width,0,4);
  Burst()
  {
    //  x =(int)random((int)cx-(radius/2),(int)cx+(radius/2));
    //  y = (int)random((int)cy-(radius/2),(int)cy+(radius/2));
     
    if (xmap < 1)
    {
      x =(int)cx; 
       y = (int)random((int)cy-(radius/2),(int)cy-(radius/3));
    }
    else if(xmap >=1 && xmap < 2)
    { 
    x =(int)random((int)cx+(radius/3),(int)cx+(radius/2)); 
       y = (int)cy;
    }  
    else if(xmap >=2 && xmap < 3)
    {
      x =(int)cx; 
       y = (int)random((int)cy+(radius/3),(int)cy+(radius/2));
    }
    else 
    {
       x =(int)random((int)cx-(radius/2),(int)cx-(radius/3)); 
       y = (int)cy;
    }
    
    burstdia = 0;
  }
  
 void update()
  {
    burstdia++;
  }

  void render()
  {
    //noStroke();
    println(xmap, x, y);
    stroke(random(0,255),random(0,255),random(0,255));
 
  
    ellipse(x,y,burstdia,burstdia);
  }
  
}
//divide the screen into 4
//if the x and y of mouse is on the first half, burst on the north. else the next direction clockwise
//North: left 