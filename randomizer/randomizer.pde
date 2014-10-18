int x = 5;
int t1, t2, t3, t4, t0;
int layout=2;

void setup() {
  size(1500,600,P3D);
  background(100);
  frameRate(1500);
}

void draw() {
  
  textSize(50);
  text("Circles",50,50);
  text("Bars",800,50);
  
  if (mousePressed && mouseX<750) {
    layout=0;
  } else if (mousePressed && mouseX>750) {
    layout=1;
  }
  
  if (keyPressed) {
      if (key=='r') {
        t0=0;
        t1=0;
        t2=0;
        t3=0;
        t4=0;
        background(100);
      }
    }
    
    if (x==0) {
      t0+=1;
    }
    if (x==1) {
      t1+=1;
    }
    if (x==2) {
      t2+=1;
    }
    if (x==3) {
      t3+=1;
    }
    if (x==4) {
      t4+=1;
    }
  
  if (layout==0) {
    background(100);
    textSize(20);
    x=int(random(5));
    fill(255,0,255);
    text(t0,250,450);
    text(t1,500,150);
    text(t2,750,450);
    text(t3,1000,150);
    text(t4,1250,450);
    fill(255);
    text("Circles",50,50);
    fill(0);
    stroke(0,255,255);
    ellipse(250,450,t0,t0);
    ellipse(500,150,t1,t1);
    ellipse(750,450,t2,t2);
    ellipse(1000,150,t3,t3);
    ellipse(1250,450,t4,t4);
  }
  
  if (layout==1) {
    background(100);
    textSize(20);
    x=int(random(5));
    fill(255,0,255);
    text(t0,50,100);
    text(t1,50,200);
    text(t2,50,300);
    text(t3,50,400);
    text(t4,50,500);
    fill(255);
    text("Bars",50,50);
    fill(0);
    stroke(0,255,255);
    rect(100,100,t0,50);
    rect(100,200,t1,50);
    rect(100,300,t2,50);
    rect(100,400,t3,50);
    rect(100,500,t4,50);
  }
}
