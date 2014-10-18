int x = 5;
int t1, t2, t3, t4, t0;
int layout=2;

void setup() {
  size(1000,600,P3D);
  background(100);
  frameRate(15000);
}

void draw() {
  
  textSize(50);
  text("Circles",50,50);
  text("Bars",550,50);
  
  if (mousePressed && mouseX<500) {
    layout=0;
  } else if (mousePressed && mouseX>500) {
    layout=1;
  }
  
  if (t0>750 || t1>750 || t2>750 || t3>750 ||t4>750) {
    t0=0;
    t1=0;
    t2=0;
    t3=0;
    t4=0;
    background(100);
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
    fill(255);
    text("Circles",0,50);
    fill(0);
    stroke(0,255,255);
    ellipse(100,450,t0,t0);
    ellipse(300,200,t1,t1);
    ellipse(500,450,t2,t2);
    ellipse(700,200,t3,t3);
    ellipse(900,450,t4,t4);
    fill(255,0,255);
    text(t0,100,50);
    text(t1,300,50);
    text(t2,500,50);
    text(t3,700,50);
    text(t4,900,50);
  }
  
  if (layout==1) {
    background(100);
    textSize(20);
    x=int(random(5));
    fill(255);
    text("Bars",0,50);
    fill(0);
    stroke(0,255,255);
    rect(100,100,t0,50);
    rect(100,200,t1,50);
    rect(100,300,t2,50);
    rect(100,400,t3,50);
    rect(100,500,t4,50);
    fill(255,0,255);
    text(t0,50,100);
    text(t1,50,200);
    text(t2,50,300);
    text(t3,50,400);
    text(t4,50,500);
  }
}
