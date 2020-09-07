int startX = -10;
int startY = -100;
int endX = -10;
int endY = -100; 

void setup()
{
  size(300,300);
  strokeWeight(4); 
  background(0, 0, 0); 
  frameRate(8); 
}
void draw()
{
  noStroke();
  fill(65,105,225);
  rect(0,200,300,300);
  
  fill(0);
  rect(0,0,300,200);
  
  stroke(100,100,100);
  fill(100,100,100);
  ellipse(20,0,100,80);
  ellipse(110,30,140,90);
  ellipse(170,30,250,70);
  ellipse(210,30,100,100);
  ellipse(260,20,50,100);
  ellipse(290,10,70,80);
  
  drawBoat(150,175);
  
  while (endX < 300){
    endX = startX + ((int)(Math.random() * 15)); 
    endY = startY + ((int)(Math.random() * 20)); 
    stroke(255,255,51);
    line(startX, startY, endX, endY); 
    startX = endX;
    startY = endY; 
    
    stroke(150,150,150);
    fill(150,150,150);
    ellipse(20,0,100,80);
    ellipse(110,30,140,90);
    ellipse(170,30,250,70);
    ellipse(210,30,100,100);
    ellipse(260,20,50,100);
    ellipse(290,10,70,80);
    
    noStroke(); 
    fill(0,0,205);
    rect(0,200,300,300);
   
    drawBoat(130,175);
  }

}

void drawBoat(int x, int y){
  noStroke();
  fill(200,246,237);
  triangle(x+35,y-15,x+70,y-50,x+70,y-15);
  fill(234,172,36);
  rect(x+70,y-50,6,65);
  fill(240,248,255);
  quad(x, y, x+25, y+25, x+75, y+25, x+100, y);
}

void mousePressed()
{
  startX = -10;
  startY = -100;
  endX = -10;
  endY = -100; 
}
