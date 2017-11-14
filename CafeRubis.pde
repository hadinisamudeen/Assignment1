//labtest1
//Hadi Nisamudeen
//D16123244

void setup()
{
  background(200);
  size(800,600);
  loadData();
  printProducts();
  displayProducts();
  displayBill();
  
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void loadData()
{
  Table table = loadTable("cafe.csv","header");

  for (TableRow r:table.rows())

  {
    Product p = new Product(r);
    
    
    products.add(p);
    
  }


}

void printProducts()
{
  for (Product pp: products)
  {
    println(pp.name);
    println(pp.price);
    
    
  }

}

void displayProducts()
{
  float half = width/2;
  float border = width * 0.05f;
  
  float x=border;
  int i=1;
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("Cafe Rubis Till System",half,border/1.5);
  fill(255);
  textSize(12);
 // int rectwid
 textAlign(LEFT);
  
  //for(int nig=1;nig<8;nig++)
  for(Product pp:products)
  {
    stroke(0);
    float y = map(i,1,8,border,height- border);
    
    //float y = map(nig,0,10,border,width- border);
    rect(x,y,half-(border*5),50);
    //fill(0,0,0);
    //text(pp.name,y,x);
    pp.prodlen=half-(border*5);
    pp.prodwid=50;
    i++;
    
  }
  i=1;
  for(Product pp:products)
  {
    String num=nf(pp.price,1,2);
    textAlign(LEFT);
   float y = map(i,1,8,border,height- border);
    fill(0,0,0);
    text(pp.name,x,y+25);
    text(num,x+((width/4)-border),y+25);
    i++;
    
  }
  
  line(half,border,half,height-border);
}

void displayBill()
{
  float half = width/2;
  float border = width*0.05f;  
  float widofbill = half-(border*2);
  fill(255);
  rect(half+border,border,widofbill,height-(border*2));
  textAlign(LEFT);
  fill(0);
  text("Your Bill",half+(widofbill/2),border*2);
  
}
float billheight=0;
void mousePressed()
{
  float half = width/2;
  float border = width * 0.05f;
  for(Product pp:products)
  {
    String num=nf(pp.price,1,2);
  if(dist(mouseX,mouseY,pp.prodlen,pp.prodwid)<pp.prodwid&&dist(mouseX,mouseY,pp.prodlen,pp.prodwid)<pp.prodlen)
  {
    stroke(0);
    text(pp.name,half+border*2,border+billheight);
    text(num,half+((width/4)-border),billheight);
    billheight+=10;
  }
  }
}
void draw()
{}