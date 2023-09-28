void dibujarMano(){
  
  mano = new FBox(50, 50);
  mano.setPosition(width/2, height/2 + 75);
  mano.setName("mano");
  mano.setStatic(true);
  mano.setGrabbable(true);
  mundo.add(mano);
  mano.setDensity(1);
  mano.attachImage(imagen_mano);
}
