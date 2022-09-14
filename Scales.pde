void setup(){
  size(1000,1000);
}
void draw(){
  background(50,50,50);
  for(int x = 0; x<=1000; x+=100){
    for(int y = 1000; y>=0; y-=100){
      if(Math.abs(x-mouseX)<=100 && Math.abs(y-mouseY)<100){
        float leanage = max(min((x-mouseX),5),-5);
        scale(x,y,leanage);
      }
      else{
        scale(x,y,(float)0);
      }
    }
  }
}
void scale(int x, int y, float lean){
  for(int i = 0; i<=10; i++){
    int shrink = i*i;
    noStroke();
    fill(i*25,i*25,i*25);
    ellipse(x - lean*i/5,y + 13*i,100 - shrink,100 - shrink);
  }
}
