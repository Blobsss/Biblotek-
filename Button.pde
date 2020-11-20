class Button{
float x,y,w,h;
Action a;
String  navn;
PApplet p;

Button(float x, float  y, float  w, float h, String navn,PApplet p){
this.x=x;
this.y=y;
this.w=w;
this.h=h;
this.navn=navn;
this.p =  p;
}
void addAction(Action a){
  this.a=a;
}

void display(){
  p.fill(255);
  p.rect(x,y,w,h);
  p.fill(100);
  p.text(navn,x+w/2,y+h/2);
}

void click(float mx, float  my){
if(mx>x &&
mx<x+w &&
my>y &&
my<y+h){
  a.execute();
  }

}
}
