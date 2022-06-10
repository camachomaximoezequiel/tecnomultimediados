// TP 2 Ilusión Óptica Interactiva
// Video explicativo https://youtu.be/i4WYKD_A9K4

void setup (){
size (800, 600);

 
}

void draw(){

  println(mouseX);
  background(155);
  noStroke();
  fill(255);

  if(mousePressed == true) {
    fill(255);
    float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0 ,255);
    background(mx, 0, my);
  }

  for(int a=0; a<900; a +=100){
    rect(-25 + a, 5, 46, 40);
    rect(-15 + a, 50, 46, 40);
    rect(-5 + a, 95, 46, 40);
    rect(-15 + a, 140, 46, 40);
    rect(-25 + a, 185, 46, 40);
    rect(-15 + a, 230, 46, 40);
    rect(-5 + a, 275, 46, 40);
    rect(-15 + a, 320, 46, 40);
    rect(-25 + a, 365, 46, 40);
    rect(-15 + a, 410, 46, 40);
    rect(-5 + a, 455, 46, 40);
    rect(-15 + a, 500, 46, 40);
    rect(-25 + a, 545, 46, 40);
    rect(-15 + a, 590, 46, 40);

   }
  fill(1); 
  for(int b=0; b<900; b+=100){
    rect(25 + b, 5, 46, 40);
    rect(35 + b, 50, 46, 40);
    rect(45 + b, 95, 46, 40);
    rect(35 + b, 140, 46, 40);
    rect(25 + b, 185, 46, 40);
    rect(35 + b, 230, 46, 40);
    rect(45 + b, 275, 46, 40);
    rect(35 + b, 320, 46, 40);
    rect(25 + b, 365, 46, 40);
    rect(35 + b, 410, 46, 40);
    rect(45 + b, 455, 46, 40);
    rect(35 + b, 500, 46, 40);
    rect(25 + b, 545, 46, 40);
    rect(35 + b, 590, 46, 40);




  }

}
