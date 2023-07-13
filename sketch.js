
// Configuracion

let AMP_MIN = 0.02;     // Minimo sonido
let AMP_MED = 0.05;
let AMP_MAX = 0.1;      // Maximo Sonido

let AMORTIGUACION = 0.95;

// Microfono

let mic;

// Amplitud

let amp;      // Cargar amplitud "volumen" del microfono
let haySonido = false;

//GESTOR

let gestorAmp;

//TIMER

let timeLimit = 0;
let countDown;

//OBJETO

let lineas = [];

let a = 50;

let b = 25;

let c = 12;




function setup(){

  createCanvas(700,900);
  background(200);
  

   
  let cant = random(6 , 8);


  for(let i = 0; i< cant ; i++){
    lineas.push( new Curvas() );
  }
  
 

  // Microfono

  mic = new p5.AudioIn();     // comunicacion con la entrada de microfono
  mic.start();      // Inicia el flujo de audio
  
  // GESTOR

  //Inicializar el gestor con los umbrales mínimos y máximos de la señal
  gestorAmp = new GestorSenial(AMP_MIN, AMP_MAX);

  gestorAmp.f = AMORTIGUACION;
  // Motor de audio

  userStartAudio();
  

}

function draw(){

  let currentTime = int(millis() / 1000);
  countDown = timeLimit + currentTime;

  //El gestor va a trabajar ocn la señal directa del microfono 
  gestorAmp.actualizar(mic.getLevel());

  amp = gestorAmp.filtrada;

  //amp= mic.getLevel();

  haySonido = amp > AMP_MIN;

  iniciar();
  reiniciar();
  printData();

    
    
    
}

  //Funciones-----------------------------------------------------------------------
  
  function printData(){
    
    push();
    
    textSize(20);
    fill(0, 255, 0);
    let texto;
    texto =  'tiempo=' + countDown;
    text(texto, 20, 20);

    pop();
  }

  function iniciar(){

    push();
    
    background(200);
    for(let i = 0; i < lineas.length; i++){
      
      lineas[i].dibujar();
      lineas[i].movimiento();
      
    }

    if(amp > 0.05 && a < 100){
      a ++;
    }

    else if( amp < 0.05 && a > 50){
      a --;

    }

    if(amp > 0.05 && b < 50){
      b ++;
    }

    else if( amp < 0.05 && b > 25){
      b --;

    }

    if(amp > 0.05 && c < 24){
      c ++;
    }

    else if( amp < 0.05 && c > 12){
      c --;

    }
      
    pop();
    
    }



    function reiniciar(){

      push();
      
      if(countDown > 0 && countDown %10 === 0 ){
          
        background(200);
        frameRate(1);
        
        
        for(let i = 0; i < lineas.length; i++){
          lineas[i].generarValores();         
          lineas[i].dibujar();
          lineas[i].movimiento();
          
        }    
        
    }

    else if( countDown >= 0 && countDown %10 !== 0){
      frameRate(60);
    }

    

      pop();
    }
   
    
    
    
    
    
  
  
