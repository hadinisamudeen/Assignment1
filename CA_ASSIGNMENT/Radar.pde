class Radar
{
  float w = width*0.1;
  float h = height*0.25;
  float cx = map(90,0,100,w,width-w);
  float cy =  map(50,0,100,height - h, height);
  float radius = dist(cx,cy,width-w,height-h)-w/2;
  //radius = dist(cx,cy,width-w,height-h)-w;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar()
  {
  }
  
  Radar(float frequency, color c)
  {
  
    //this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(0, 200, 200);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
    int trailLength = 50;
    float greenIntensity = 255 / (float)trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(0, 0, i * greenIntensity);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
  }
}