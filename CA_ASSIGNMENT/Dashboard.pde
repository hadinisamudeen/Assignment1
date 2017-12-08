class Dashboard
{
 float h = height*0.25;
 float w = width*0.1;
 float topedge = height*0.2;

void drawboard()
  {
    
    stroke(0,200,255);
    line(w,height-h,width-w,height-h);
    line(w,height-h,0,height);
    line(width-w,height-h,width,height);
    noFill();
    rect(0,0,width,topedge,0,0,50,50);
    
  }
 
}