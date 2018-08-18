int x;
int y;
int vx;
int vy;
int yb1;
int yb2;
boolean w,s,a,b;
void setup() {
  size (690, 600);
  x=100;
  y=100;
  vx=3;
  vy=3;
}

void draw() {
  background(0, 0, 0);
  noStroke();
  fill(0, 255, 0);
  ellipse(x, y, 45, 45);
  fill(0, 0, 255);
  rect(10, yb1, 30, 180);
  rect(width-40, yb2, 30, 180);
  x=x+vx;
  y=y+vy;
  
  if(x<40 && y>yb1 && y<yb1+180){
  vx=vx*-1;
  }
   if(x>width-40 && y>yb2 && y<yb2+180){
  vx=vx*-1;
  }
  
  if (x>width || x<0) {
    x=width/2;
    y=height/2;
  }
  if (y>height || y<0) {
    vy=vy*-1;
  }
  if(a){
  yb2=yb2-3;
  }
  if(b){
  yb2=yb2+3;
  }
  if(w){
  yb1=yb1-3;
  }
  if(s){
  yb1=yb1+3;
  }
}
void keyPressed() {
  if (key=='s') {
    s=true;
  }
  if (key=='w') {
    w=true;
  }
  
  if (keyCode==DOWN) {
    b=true;
  }
  if (keyCode==UP) {
    a=true;
  }
}
void keyReleased(){
if (key=='s') {
    s=false;
  }
  if (key=='w') {
    w=false;
  }
  
  if (keyCode==DOWN) {
    b=false;
  }
  if (keyCode==UP) {
    a=false;
  }
}
