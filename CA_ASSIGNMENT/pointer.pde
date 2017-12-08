class Pointer extends Dashboard
{
  float ptrx = mouseX;
  float ptry = mouseY;
  
  
  void update()
  {
    ptrx = mouseX;
    if (mouseX < 0)
    {
      ptrx = 0;
    }
    if (mouseX>width)
    {
      ptrx = width;
    }
    
    
    ptry = mouseY;
     if (mouseY < topedge)
       ptry = topedge;
     if (mouseY > height-(height*0.25))
       ptry = height-(height*0.25);
  }
    
  void render()
  {
    stroke(0,200,255);
     line(0,topedge,ptrx,ptry);
     line(width,topedge,ptrx,ptry);
     line(0,height-h,ptrx,ptry);
     line(width,height-h,ptrx,ptry);
    rect(ptrx-20,ptry-20,40,35,10);
     stroke(255,0,0);
    line(ptrx-5,ptry+5,ptrx+5,ptry-5);
    line(ptrx-5,ptry-5,ptrx+5,ptry+5);
  }
}