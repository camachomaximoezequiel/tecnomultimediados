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
  
  Pantalla pantalla;


void setup(){

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
  tiempo4 = 4;
  
  
  

   
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
