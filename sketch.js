//Link al video explicativo ---------------------> https://youtu.be/7EXeqLFlTGA

// Configuracion

let AMP_MIN = 0.02;     // Minimo sonido

let AMP_MAX = 0.1;      // Maximo Sonido



// Contador
let timeLimit = 0;
let countDown;

// Microfono

let mic;

// Amplitud

let amp;      // Cargar amplitud "volumen" del microfono
let haySonido = false;

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

  let currentTime = int(millis() / 1000);
  countDown = timeLimit - currentTime;

  if(countDown < 0){
    
    reiniciar();
    
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

  function reiniciar(){
    
    push();
    
    for(let i = 0; i < lineas.length; i++){
      lineas[i].dibujar();
      lineas[i].movimiento();
    }
    
    
    pop();
    
  }
  
