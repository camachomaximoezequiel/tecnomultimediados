import fisica.*;
import processing.sound.*;


  
  
  int PUERTO_IN_OSC = 12345; // puerto de entrada
  int PUERTO_OUT_OSC = 12346; // puerto de salida
  String IP = "127.0.0.1"; // ip del BFlow 
  
  float averageFlow_x;
  float averageFlow_y;

  float totalFlow_x;
  float totalFlow_y;
  
  Receptor receptor;

  Emisor emisor;
  
  ZonaLocal zl;
  ZonaLocal zl2;
  ZonaLocal zl3;


  FBox dedos;
  FBox mano;
  FWorld mundo;

  FCircle circulo;
  
  int a;
  int b;
  int c;
  
  int vidasJugador;
  int tiempo;
  int tiempo2;
  int tiempo3;
  int tiempo4;


  PImage imagen_anillo;
  PImage imagen_diamante;
  PImage imagen_mano;
  PImage imagen_fondo;
  PImage imagen_inicio;
  PImage imagen_ganar;
  PImage imagen_perder;
  
  PImage[] at = new PImage[15];
  int d = 0;
  
  PImage[] f = new PImage[6];
  int e = 0;
  
  PImage[] by = new PImage[2];
  int z = 0;
  
  PImage[] ganar = new PImage[29];
  int y = 0;
  
  Pantalla pantalla;
  SoundFile musicaAnillos;

void setup(){
  
  for( int i = 0 ; i < at.length ; i++ ){
    at[i] = loadImage( "at"+i+".png" );
  }
  
  for( int j = 0 ; j < f.length ; j++ ){
    f[j] = loadImage( "f"+j+".png" );
  }
  
  for( int k = 0 ; k < by.length ; k++ ){
    by[k] = loadImage( "by"+k+".png" );
  }
  
  for( int l = 0 ; l < ganar.length ; l++ ){
    ganar[l] = loadImage( "ganar"+l+".png" );
  }

  musicaAnillos= new SoundFile(this,"anillos.mp3");
  musicaAnillos.amp(15);
  size(800, 600);
  
  setupOSC(PUERTO_IN_OSC, PUERTO_OUT_OSC, IP); 
  
  vidasJugador = 1;
  tiempo = 40;
  
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges();
  mundo.setGravity(0, 100); 
  
  pantalla = new Pantalla (this);
  tiempo2 = 10;
  tiempo3 = 4;
  tiempo4 = 3;
  
  
  

   
}  
  

void draw () {
  
  //receptor.actualizar(mensajes);
  
  pantalla.draw ();
  
  
  
}

void keyPressed() {
  
  //pantalla.keyPressed ();
  
}

void contador2 () {
    if (frameCount % 48 == 0) {
      tiempo2 --;
    }
  }
  
void contador3 () {
    if (frameCount % 48 == 0) {
      tiempo3 --;
    }
  }
  
void contador4 () {
    if (frameCount % 48 == 0) {
      tiempo4 --;
    }
  }
