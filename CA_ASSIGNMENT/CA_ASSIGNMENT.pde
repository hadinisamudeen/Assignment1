import ddf.minim.*;


Minim minim;
AudioPlayer sound1;

//import processing.sound.*;

void setup()
{
  size(800,800);
  font = createFont("Andalus-48.vlw",12);
  textAlign(CENTER);
  textFont(font);
  Dbor = new Dashboard();
  comp = new Compass(Dbor.topedge/3);
  pointer = new Pointer();
  r = new Radar(0.25, color(0, 255, 0));
  minim = new Minim(this);
  sound1 = minim.loadFile("laser.wav");
}
//SoundFile sound1;
float wbor = width*0.95f;
ArrayList<celestials> c= new ArrayList<celestials>();
ArrayList<Burst> b= new ArrayList<Burst>();
Radar r;
Dashboard Dbor;
Compass comp;
Pointer pointer;
int high = 0;
int score = 0;
PFont font;
void draw()
{
  background(0);
  int rand = (int)random(1, 50);
  if(rand == 1)
  {
    celestials cel = new celestials((int)random(0,width),(int)random(200,height - 200));
    //put a random y so it moves from all directions
    c.add(cel);
  }
  for(int i = 0; i < c.size(); i++)
  {
    if((c.get(i).x < (0+c.get(i).dia/2) || c.get(i).x > (width - c.get(i).dia/2)) || (c.get(i).y < (Dbor.topedge+c.get(i).dia/2) || c.get(i).y > height - Dbor.h-c.get(i).dia/2))
    {
      c.remove(i);
    }
    else
    {
      c.get(i).update();
      c.get(i).render();
    }
  }
  
 
  
  Dbor.drawboard();
  r.update();
  r.render();
    for(int i = 0; i < b.size(); i++)
  {
    if(b.get(i).burstdia > 10)
    {
      b.remove(i);
    }
    else
    {
      b.get(i).update();
      b.get(i).render();
    }
  }
  pointer.update();
  pointer.render();
 
  if(score > high)
      high = score;
  fill(255);
  text("HIGHSCORE:" + high, width/3 , height - 100);
  text("SCORE: "+score, width/2 , height - 100);
  textSize(20);
  text("Earth time :" + hour() +":" +  minute() +":" +  second(),width/6,height - 100);
  comp.update();
  comp.render();
  textSize(12);
  stroke(255,0,0);
  line(width/2,Dbor.topedge/3,width/2,Dbor.topedge/3+50);
  fill(0);
  stroke(0);
  rect(0,Dbor.topedge/3,100,100);
  rect(width,Dbor.topedge/3,-100,100);
  fill(255,80,0);
  triangle(0,Dbor.topedge/3,0,Dbor.topedge/3+comp.compheight,100,Dbor.topedge/3+comp.compheight/2);
  triangle(height,Dbor.topedge/3,height,Dbor.topedge/3+comp.compheight,height-100,Dbor.topedge/3+comp.compheight/2);
}

void mousePressed()
{
  for(int i = 0; i < c.size(); i++)
  {
    if (dist(mouseX,mouseY,c.get(i).x,c.get(i).y)<c.get(i).dia/2)
      {
        sound1.rewind();
        c.remove(i);
        score++;
        
        Burst burst = new Burst();
        b.add(burst);
        sound1.play();
        return;
      }
  }
  if (score > 0)
    score--;
  
}


/*TO DO:
 Put sounds for the shit
 change font if you can
 change front page if you can*/