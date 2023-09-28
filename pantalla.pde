class Pantalla {
  
  Gameplay gameplay;
  SoundFile musicaGameplay, musicaGanar, musicaPerder;

  PFont fuente;
  int estadoID;
  


  Pantalla (PApplet s) {
    
    //imagen_fondo = loadImage("fondo.jpg");
    gameplay = new Gameplay ();
    
    
    musicaGameplay = new SoundFile (s, "musicadefondo.mp3");
    musicaGanar = new SoundFile (s, "musicaganar.wav");
    musicaPerder = new SoundFile (s, "musicaperder.wav");

    //fuente = loadFont ("Impact-48.vlw");

    estadoID = 0;
  }

  void textos (String _texto, float _size, float _posX, float _posY) {
    textAlign (CENTER, CENTER);
    textSize (_size);
    text (_texto, _posX, _posY);
  }

  void pantallaInicial () {  
    
    fill(255);
    vidasJugador = 1;
    
    
    background (0);
    //textFont(fuente);
    
    contador2 ();
    textos ("Put a ring on it!", 52, width/2, height/4);
    textos ("Envoca el anillo en el dedo anular para ganar,\n si te equivocas de dedo pierdes", 24, width/2, 300);
    textos ("Mueve los brazos lateralmente hacia arriba para mover los anillos", 24, width/2, 420);
    
    if (tiempo2 == 0 ) {
      estadoID = 1;
      
      musicaGameplay.play ();
      tiempo2 = 10;
      tiempo = 30;
    }
    
    
  }

  void pantallaJuego () {
    
    
    gameplay.draw ();
     
    
    fill (255, 0, 128);
    textos ("Tiempo", 30, 700, 50);
    text (tiempo, 700, 80);
    
    textos ("Diamante", 30, 80, 50);
    text (vidasJugador, 80, 80);
    
  }

  void creditosPerder () {
    
    contador3 ();
    fill(255);
    background (40, 0, 0);
    //textFont (fuente);
    
    

    textos ("Perdiste!", 52, width/2, height/4);
    textos ("Creado por: Lara Aimone, Fiorella Bisello y Camacho Maximo Ezequiel", 20, width/2, 200);
    textos ("Materia: Tecnologia Multimedial II", 18, width/2, 240);
    textos ("Docente: Matias Jauregui", 18, width/2, 320);
    
    
    
    
    if (estadoID == 2 && tiempo3 == 0) {
      
      estadoID = 0;
      
      musicaPerder.stop ();
      tiempo2 = 10;
      tiempo3 = 4;
      
    }
  }

  void creditosGanar() {
    
    contador4 ();
    
    fill(255);
    background(0, 40, 0);
    //textFont (fuente);

    textos ("Ganaste!", 52, width/2, height/4);
    textos ("Creado por: Lara Aimone, Fiorella Bisello y Camacho Maximo Ezequiel", 20, width/2, 200);
    textos ("Materia: Tecnologia Multimedial II", 18, width/2, 240);
    textos ("Docentes: Matias Jauregui", 18, width/2, 280);
    
    
    if (estadoID == 3 && tiempo4 == 0) {
      
      estadoID = 0;
      
      musicaGanar.stop ();
      tiempo2 = 10;
      
    }
  }

  void perder () {
    if ( vidasJugador == 0 || tiempo == 0  ) {
      tiempo3 = 4;
      estadoID = 2;
      
      musicaPerder.play ();
      musicaGameplay.stop ();
      tiempo2 = 10;
      tiempo = 30;
      
    }
  }

  void ganar () {
    if ( vidasJugador == 2 ) {
      tiempo4 = 4;
      estadoID = 3;
      
      musicaGanar.play ();
      musicaGameplay.stop ();
      tiempo2 = 10;
      tiempo = 30;
    }
  }

  void draw () {
    
    if (estadoID == 0) {
      pantallaInicial () ;
    } else if (estadoID == 1) {
      pantallaJuego ();
      
     perder ();
     ganar ();
     
    } else if (estadoID == 2) {
      creditosPerder ();
      tiempo2 = 10;
    } else if (estadoID == 3) {
      creditosGanar ();
      tiempo2 = 10;
    }
  }

  void keyPressed() {
    if (estadoID == 0 && keyCode == ' ') {
      estadoID = 1;
      
      musicaGameplay.play ();
    } 
    if (estadoID == 2 && keyCode == ENTER) {
      estadoID = 0;
      
      musicaPerder.stop ();
    }
    if (estadoID == 3 && keyCode == ENTER) {
      estadoID = 0;
      
      musicaGanar.stop ();
    }
  }
  
  
  

}
