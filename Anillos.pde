void dibujarAnillos(){
  
  for(int i = 0; i < 15; i = i+1){
    
    FCircle circulo = new FCircle(40);
    
    circulo.setPosition(random (50, 750), random (450, 550));
    circulo.setGrabbable(true);
    circulo.setFill(255);
    circulo.setName("circulo_" + nf(i,1));
    circulo.setFriction(1);
    circulo.setDensity(1);
    circulo.setRestitution(0.5);
    circulo.attachImage(imagen_anillo);
    mundo.add(circulo);
}
}

void dibujarDiamante(){
  
  for(int i = 0; i < 1; i = i+1){
    FCircle circulo = new FCircle(40);
    
    circulo.setPosition(random (50, 750), random (450, 550));
    circulo.setGrabbable(true);
    circulo.setFill(255);
    circulo.setName("diamante");
    circulo.setFriction(1);
    circulo.setDensity(1);
    circulo.setRestitution(0.5);
    circulo.attachImage(imagen_diamante);
    mundo.add(circulo);
}
}

void cambiarDensidad(FBody _circulo){
  
  
mundo.remove(_circulo);
println("llegue");
}


void dividirCirculo(FCircle circulo)
{

  mundo.remove(circulo);
  
}
