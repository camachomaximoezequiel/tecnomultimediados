import fisica.*;

FWorld mundo;

FBox dedos;
FBox mano;


FCircle circulo;
int a;
int b;
int c;


PImage imagen_anillo;
PImage imagen_diamante;
PImage imagen_mano;

void setup()
{

  size(800, 600);
  Fisica.init(this);

  mundo = new FWorld();
  mundo.setEdges();
  mundo.setGravity(0, 100);

  imagen_anillo = loadImage("anillo.png");
  imagen_diamante = loadImage("diamante.png");
  imagen_mano = loadImage("mano.png");

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

//--------------------------- mano ----------------------
  dibujarMano();
}

void draw()
{
  //background(255);
  fill(1);
  rect(0, 0, width, height);
  mundo.step();
  mundo.draw();

  if (mousePressed && (mouseButton == LEFT)) {
    mundo.setGravity(a, -100);
  } else {
    mundo.setGravity(a, 100);
  }
}

void keyPressed() {

  if (keyPressed && (key == 'a')) {
    mundo.setGravity(-900, 100);
  }

  if (keyPressed && (key == 'd')) {
    mundo.setGravity(900, 100);
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
    if ((cuerpo1.getName().equals("circulo_0")  && cuerpo2.getName().equals("boxcorazon")  )  ||  (cuerpo2.getName().equals("circulo_0")  && cuerpo1.getName().equals("boxcorazon")) ) {
    cambiarDensidad(cuerpo2);
    }
  }
  
  
  
}
