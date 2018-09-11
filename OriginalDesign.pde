int x = -50;
float y = 200;
void setup()
{
  size(600,600);
}

void draw()
{
  background(152, 201, 224);
  hill();
  plane();
  sun();
  mountains();
}
void plane()
{
  fill(197);
  beginShape();
  curveVertex(20+x,50+y);
  curveVertex(20+x,50+y);
  curveVertex(80+x,50+y);
  curveVertex(110+x,80+y);
  curveVertex(50+x,80+y);
  curveVertex(20+x,50+y);
  curveVertex(80+x,50+y);
  endShape();
  fill(255);
  triangle(80+x,55+y,95+x,65+y,80+x,65+y);
  triangle(75+x,70+y,40+x,90+y,55+x,70+y);
  triangle(30+x,49+y,25+x,40+y,45+x,48.9+y);
  x=x+3;
  //y=y+1.5;
  if (x>600)
  {x = -50;
   y = 200;
  }
}
void sun()
{
  fill(232, 214, 83);
  ellipse(600,0,300,300);
}


void mountains()
{
 fill(188, 143, 81);
 triangle(600, 600,  400, 600, 500, 500);
 triangle(400, 600,  200, 600, 300, 500);
 triangle(500, 600,  300, 600, 400, 500);
 //noStroke();
 fill(255,255,255);
 triangle(400,500,440,540,360,540);
 triangle(500,500,540,540,460,540);
 triangle(300,500,340,540,260,540);
}

void hill()
{
 fill(55, 145, 42);
 bezier(0,600,100,550,500,500,700,600);
}
