class celestials
{
 //float h = height*0.25;
 //float w = width*0.1;
 int x,y;//positions
 int dia;
  int xspeed,yspeed;//speed of the shit
 
 celestials(int x, int y)
 {
   this.x = x;
   this.y = y;
   dia = (int)random(30, 50);
   
   if(x < width/2)
   xspeed = (int)random(1,3);
   else
   xspeed = -(int)random(1,3);
   
   if(y < height/2)
   yspeed = (int)random(1,3);
   else
   yspeed = -(int)random(1,3);
   
 }
 void update()
 {
  x += xspeed;
  y += yspeed;
 }
 
 void render()
 {
    fill(255);
    stroke(255);
    ellipse(x,y,dia,dia);
 }


}

/*increase circle dia, decrease speed*/