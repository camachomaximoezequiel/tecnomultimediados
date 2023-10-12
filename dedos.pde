void dibujarCorazon(){
  
  dedos = new FBox(300, 30);
  dedos.setPosition(width/2 +18, height/2+25);
  dedos.setName("corazon");
  dedos.setRotation(radians(90));
  dedos.setStatic(true);
  dedos.setGrabbable(false);
  mundo.add(dedos);
  dedos.setNoStroke();
  dedos.setFill(255, 0);

}

void dibujarAnular(){
  
  dedos = new FBox(150, 30);
  dedos.setPosition(width/2 + 65 , height/2 - 25 );
  dedos.setName("anular");
  dedos.setRotation(radians(97));
  dedos.setStatic(true);
  dedos.setGrabbable(false);
  mundo.add(dedos);
  dedos.setNoStroke();
  dedos.setFill(255, 0);

}

void dibujarIndice(){
  
  dedos = new FBox(200, 30);
  dedos.setPosition(width/2 - 35 , height/2 - 5 );
  dedos.setName("indice");
  dedos.setRotation(radians(-97));
  dedos.setStatic(true);
  dedos.setGrabbable(false);
  mundo.add(dedos);
  dedos.setNoStroke();
  dedos.setFill(255, 0);
}

void dibujarMeñique(){
  
  dedos = new FBox(200, 30);
  dedos.setPosition(width/2 + 95 , height/2+40 );
  dedos.setName("meñique");
  dedos.setRotation(radians(103));
  dedos.setStatic(true);
  dedos.setGrabbable(false);
  mundo.add(dedos);
  dedos.setNoStroke();
  dedos.setFill(255, 0);

}

void dibujarPulgar(){
 
  dedos = new FBox(100, 30);
  dedos.setPosition(width/2 - 65 , height/2 + 70 );
  dedos.setName("pulgar");
  dedos.setRotation(radians(50));
  dedos.setStatic(true);
  dedos.setGrabbable(false);
  mundo.add(dedos);
  dedos.setNoStroke();
  dedos.setFill(255, 0);
  
  

}
