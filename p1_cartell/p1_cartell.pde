import processing.pdf.*;
boolean record;


void setup(){
size(100,300);
frameRate(5);
}

void draw(){
  
  if(record){
    beginRecord(PDF, "llapis-####.pdf");
    }
    
    
   background(255);
  lapiz_jm(random(25,70),random(180,260));



 if (record){
    endRecord();
    record = false;
    }
}

void lapiz_jm(float amplio, float alto){
//boli
noStroke();
rectMode(CENTER);
fill(50);
rect(amplio/2, alto/2, amplio, alto);

 //punta
fill(#fdddca);
triangle(0, alto, amplio, alto, amplio/2, alto*1.12);

 //puntita
fill(0);
triangle(amplio/3, alto*1.08, amplio/3*2, alto*1.08, amplio/2, alto*1.12);


//deco boli
fill(255, 255, 0);
rect(amplio/2, alto/2, amplio/3, alto);
}

void mousePressed() {
  record = true;
}
