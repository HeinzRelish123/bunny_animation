color green = #3FD61E;
color dgreen = #20A047;
color yellow = #D3C635;
color blue = #188EF2;
color white = #FFFFFF;
//
//variables for background mountain
int x1 = -200;
int x2 = 200;
int x3 = 600;
//
//variables for forefront mountains
int y1 = 0;
int y2 = 200;
int y3 = 400;
int y4 = 600;
int y5 = 800;
//
//bunny variable
int xbunny = 0;
//
//cloud
int cloudx = 0;
int cloud1 = 400;
//
//
void setup() {
  size(800, 600);
  noStroke();
}
//
void draw() {
  background(blue);
  //
  pushMatrix();
  translate(cloudx,0);
  cloud();
  popMatrix();
  //
  cloudx = cloudx + 1;
  //
  if(cloudx>=750) {
  cloudx = -500;
  }  
  //cloud 2=============
  pushMatrix();
  translate(cloud1,0);
  cloud1();
  popMatrix();
  //
  cloud1 = cloud1 + 1;
  //
  if(cloud1>=750) {
  cloud1 = -500;
  }  
  //cloud2 END=======
  //Background_mountains start
  fill(green);
  ellipse(x1,400,409,409);
  ellipse(x2,400,409,409);
  ellipse(x3,400,409,409);
  //
  x1 = x1 + 2;
  x2 = x2 + 2;
  x3 = x3 + 2;
 //
if (x1 >= 1000) {
  x1 = -200;
}
if (x2 >= 1000) {
  x2 = -200;
}
if (x3 >= 1000) {
  x3 = -200;
}
//Background_mountain END
//
//forefront_mountains starts
//
fill(dgreen);
//
ellipse(y1,450,200,200);
ellipse(y2,450,200,200);
ellipse(y3,450,200,200);
ellipse(y4,450,200,200);
ellipse(y5,450,200,200);
//
y1 = y1 + 3;
y2 = y2 + 3;
y3 = y3 + 3;
y4 = y4 + 3;
y5 = y5 + 3;
//
//
if (y1 >= 900) {
  y1 = -100;
}
if (y2 >= 900) {
  y2 = -100;
}
if (y3 >= 900) {
  y3 = -100;
}
if (y4 >= 900) {
  y4 = -100;
}
if (y5 >= 900) {
  y5 = -100;
}
//
//GROUND START
fill(yellow);
rect(0,450,800,150);
//GROUND END
//
//bunny start
pushMatrix();
translate(xbunny,250);
bunny();
popMatrix();
//
xbunny = xbunny + 5;
//
if (xbunny >= 1000) {
  xbunny = -240;
}
//
}

//===============================================================================
void bunny() {
  noStroke();
  fill(255);
  ellipse(100,100,40,90);
  ellipse(200,100,40,90);
  ellipse(150,200,180,180);
  fill(0);
  ellipse(100,200,28,28);
  ellipse(200,200,28,28);
  ellipse(150,220,30,20);
  ellipse(150,255,45,5);
  ellipse(150,245,6,20);
}
//===============================================================================
void cloud() {
  noStroke();
  fill(255);
  ellipse(400,160,100,100);
  ellipse(400,210,100,100);
  ellipse(350,210,100,100);
  ellipse(450,210,100,100);
}
void cloud1() {
  noStroke();
  fill(255);
  ellipse(400,50,100,100);
  ellipse(400,100,100,100);
  ellipse(350,100,100,100);
  ellipse(450,100,100,100);
}
