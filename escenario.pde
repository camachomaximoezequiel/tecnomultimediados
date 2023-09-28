class Escenario {

  Escenario () {
    
   imagen_fondo = loadImage("fondo.jpg");
    
  }

  void draw () {
  background (0);
  image( imagen_fondo, 0, 0);
  mundo.step();
  mundo.draw();
  
  
  }
}
