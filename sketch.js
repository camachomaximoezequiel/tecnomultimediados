//Link al video explicativo --------------------->

// Configuracion

let AMP_MIN = 0.02;     // Minimo sonido

let AMP_MAX = 0.1;      // Maximo Sonido

// Microfono

let mic;

// Amplitud

let amp;      // Cargar amplitud "volumen" del microfono
let haySonido = false;

// Imprimir

let IMPRIMIR = false;


let lineas = [];

function setup(){

  createCanvas(800, 600);
  background(200);
  

  let cant = random(6 , 8);

  for(let i = 0; i< cant ; i++){
    lineas.push( new Curvas() );
  }
  for(let i = 0; i < lineas.length; i++){
    lineas[i].dibujar();
  }

  // Microfono

  mic = new p5.AudioIn();     // comunicacion con la entrada de microfono
  mic.start();      // Inicia el flujo de audio
  
  // Motor de audio

  userStartAudio();
  

}

function draw(){

  background(200);

  amp= mic.getLevel();
  haySonido = amp > AMP_MIN;
  
  if (haySonido){
    for(let i = 0; i < lineas.length; i++){
      
      lineas[i].movimiento();
    }
  }
  
  
  for(let i = 0; i < lineas.length; i++){
    lineas[i].dibujar();
    
  }

  if(IMPRIMIR){
    printData();
  }
  
}

  function printData(){
    
    push();
    
    textSize(20);
    fill(0);
    let texto;
    texto = 'amplitud:' + amp;
    text(texto, 20, 20);

    pop();
  }

  
