

class Gameplay {
  
  SoundFile musicaAnillos; 
  Escenario escenario;
  
  Gameplay () {
    
    
    
    
    imagen_anillo = loadImage("anillo.png");
    imagen_diamante = loadImage("diamante.png");
    imagen_mano = loadImage("mano.png");
    imagen_fondo = loadImage("fondo.jpg");
    
//--------------------------- escenario ----------------------  
    
    escenario = new Escenario ();
    
    
//--------------------------- dedos ---------------------
  
    dibujarCorazon();
    dibujarIndice();
    dibujarAnular();
    dibujarMeñique();
    dibujarPulgar();
  
//--------------------------- anillos -------------------
  
    dibujarAnillos();
    dibujarDiamante();
  
//--------------------------- coliciones ----------------

    dibujarHitbox1();
    dibujarHitbox2();
    dibujarHitbox3();
    dibujarHitbox4();
    dibujarHitbox5();

//--------------------------- mano ----------------------
  
    dibujarMano();
    
  
//--------------------------- captura movimiento --------

    setupOSC(PUERTO_IN_OSC, PUERTO_OUT_OSC, IP); 
  
    receptor = new Receptor();
  
    emisor = new Emisor();
  
    zl = new ZonaLocal(01, 650, 100, 40, 40);
    emisor.addZona(zl);
    
    zl2 = new ZonaLocal(02, 50, 100, 40, 40);
    emisor.addZona(zl2);
  
    receptor.setPuntosLocales(emisor.puntosLocales);
    receptor.setZonasLocales(emisor.zonasLocales);
    
}
  

  void contador () {
    if (frameCount % 48 == 0) {
      tiempo --;
    }
  }
  
  
 
 
  
  void draw () {
  
  
  
    
  receptor.actualizar(mensajes);
    
  float cx = width / 2;
  float cy = height / 2;
  
  
  float movimientoX= abs(zl.getMovX()); //VALOR ABSOLUTO DEL MOVIMIENTO EN X EN LA ZONA LOCAL QUE DECLARE
  float movimientoY= abs(zl.getMovY());//VALOR ABSOLUTO DEL MOVIMIENTO EN Y EN LA ZONA LOCAL QUE DECLARE
  
  float movimientoX2= abs(zl2.getMovX()); //VALOR ABSOLUTO DEL MOVIMIENTO EN X EN LA ZONA LOCAL QUE DECLARE
  float movimientoY2= abs(zl2.getMovY());//VALOR ABSOLUTO DEL MOVIMIENTO EN Y EN LA ZONA LOCAL QUE DECLARE
  
  escenario.draw();
  
  contador ();
  
  

  
  //line(cx, cy, cx + averageFlow_x * 10, cy + averageFlow_y * 10);
  
  


  if (movimientoY > 0.4  ) {
    mundo.setGravity(100, -200);
  } else if ( movimientoY2 > 0.4 ) {
    mundo.setGravity(-100, -200);
  } else{
    mundo.setGravity(a, 100);
  }
  
  
  
  //if (movimientoX > 0.7) {
  //  mundo.setGravity(-400, 100);
  //}

  //if (movimientoX < 0.7) {
   // mundo.setGravity(400, 100);
 // }
 
 
  emisor.actualizar();
  //emisor.dibujar();
 }
 
}


  
void contactStarted(FContact contacto) {
  


  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();
  
  if(cuerpo1.getName() != null && cuerpo2.getName() != null){
    
    println("cuerpo1: " + cuerpo1.getName());
    println("cuerpo2: " + cuerpo2.getName());
  }
  

  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("boxanular")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("boxanular")) ) {
    insertarAnillo(cuerpo2);
    vidasJugador ++;
    dibujarDiamante();
    tiempo4 = 3;
    
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("boxcorazon")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("boxcorazon")) ) {
    insertarAnillo(cuerpo2);
    vidasJugador --;
    dibujarDiamante();
    tiempo3 = 4;
    
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("boxmeñique")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("boxmeñique")) ) {
    insertarAnillo(cuerpo2);
    vidasJugador --;
    dibujarDiamante();
    tiempo3 = 4;
    
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("")  && cuerpo2.getName().equals("boxindice")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("boxindice")) ) {
    insertarAnillo(cuerpo2);
    vidasJugador --;
    dibujarDiamante();
    tiempo3 = 4;
    
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("boxpulgar")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("boxpulgar")) ) {
    insertarAnillo(cuerpo2);
    vidasJugador --;
    dibujarDiamante();
    tiempo3 = 4;
    
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_0")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_0")) ) {
    musicaAnillos.play ();
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_1")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_1")) ) {
    musicaAnillos.play ();
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_2")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_2")) ) {
    musicaAnillos.play ();
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_3")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_3")) ) {
    musicaAnillos.play ();
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_4")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_4")) ) {
    musicaAnillos.play ();
    }
  }
  
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_5")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_5")) ) {
    musicaAnillos.play ();
    }
  }
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_6")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_6")) ) {
    musicaAnillos.play ();
    }
  }
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_7")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_7")) ) {
    musicaAnillos.play ();
    }
  }
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_7")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_8")) ) {
    musicaAnillos.play ();
    }
  }
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_7")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_9")) ) {
    musicaAnillos.play ();
    }
  }
  if (cuerpo1.getName() != null && cuerpo2.getName() != null) {
    if ((cuerpo1.getName().equals("diamante")  && cuerpo2.getName().equals("circulo_7")  )  ||  (cuerpo2.getName().equals("diamante")  && cuerpo1.getName().equals("circulo_10")) ) {
    musicaAnillos.play ();
    }
  }
}
