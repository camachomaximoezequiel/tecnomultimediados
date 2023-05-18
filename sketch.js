let lineas = [];

function setup(){
  createCanvas(windowHeight, windowHeight);
  background(200);
  
  let cant = random(4 , 8);

  for(let i = 0; i< cant ; i++){
    lineas.push( new Curvas() );
  }
  for(let i = 0; i < lineas.length; i++){
    lineas[i].dibujar();
  }
}

function draw(){
  background(200);
  for(let i = 0; i < lineas.length; i++){
    lineas[i].dibujar();
    lineas[i].movimiento();
  }
}