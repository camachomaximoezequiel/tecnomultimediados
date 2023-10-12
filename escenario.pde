class Escenario {

  Escenario () {
 
  
  frameCount = 0;
   //imagen_fondo = loadImage("fondo.png");
  
  }

  void draw () {
  
  
  background (0);
  //image( imagen_fondo, 0, 0);
  image( f[e], 0, 0 );
  image( at[d], 650, 50 );
  beyonceContador ();
  fondoContador();
  
  if( e == f.length )
    e = 0;
  
  if( d == at.length )
    d = 0;
    
  mundo.step();
  mundo.draw();
  
  
  }
  
  void beyonceContador () {
    if (frameCount % 105 == 0) {
      d++;
    }
  }
  
  void fondoContador () {
    if (frameCount % 15 == 0) {
      e++;
    }
  }
}
