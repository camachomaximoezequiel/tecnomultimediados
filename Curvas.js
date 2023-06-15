class Curvas{
    
    constructor(){

    
        // Curvas I

        this.xinicial = random (-600, 400);
        this.xfinal = random (400, -600);
        this.yinicial = -100;
        this.yfinal = 700;

        //Curvas II

        this.xinicialm = random(400, 1200); 
        this.xfinalm = random(400, 1200);
        this.yinicialm = -100;
        this.yfinalm = random(610, 700);
        

        this.lineas = lineas;

        // Paleta de colores - Array

        this.elegircolor= floor(random(0,6));

        this.rojo = color(255, 0, 0, 25);
        this.verde = color(0, 255, 0, 25);
        this.azul = color(0, 0, 255, 25);
        this.amarillo = color(255, 255, 0, 25);
        this.violeta = color(128, 0, 255, 25);
        this.rosa = color(255, 192, 203, 25);

        this.arraycolores =[this.rojo, this.verde, this.azul, this.amarillo, this.violeta, this.rosa];
        
        this.colorLinea = color(this.arraycolores[this.elegircolor]);
     
        
        
        //Dar un desplazamiento maximo de los puntos de control 
        
        this.maxOffsetX = width;
        this.maxOffsetY = height;
        

    }

    dibujar(){

        stroke(this.colorLinea);
        strokeWeight(30);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicial, this.yinicial, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinal, this.yfinal);
        }

        stroke(this.colorLinea);
        strokeWeight(15);

        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicial, this.yinicial, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinal, this.yfinal);
        }

        stroke(this.colorLinea);
        strokeWeight(6);

        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicial, this.yinicial, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinal, this.yfinal);
        }

        //-------------------CURVAS DEL MEDIO------------------------

        stroke(this.colorLinea);
        strokeWeight(30);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicialm, this.yinicialm, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinalm, this.yfinalm);
        }
        stroke(this.colorLinea);
        strokeWeight(30);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicialm, this.yinicialm, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinalm, this.yfinalm);
        }
        stroke(this.colorLinea);
        strokeWeight(12);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicialm, this.yinicialm, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinalm, this.yfinalm);
        }
        
    }
    

    movimiento(){

        this.cx1 = amp;
        this.cy1 = amp;


        const offsetX = map(amp, AMP_MIN,AMP_MAX, -this.maxOffsetX, this.maxOffsetX);
        const offsetY = map(amp, AMP_MAX, AMP_MIN, -this.maxOffsetY, this.maxOffsetY);
        
        //Restar el desplazamiento a cx1 y cy1 los puntos de control cx2 y cy2 para que se muevan en dirección opuesta

        this.cx2 = this.cx1 - offsetX;
        this.cy2 = this.cy1 - offsetY;

        //Limitar la posicion de cx2 y cy2 dentro de los límites de la pantalla

        this.cx2 = constrain(this.cx2,0,width);
        this.cy2 = constrain(this.cy2,0,height); 
        
    }
}





           //let c = color(random(255), random(255),random(255)); 

           /* let inter = map(i, 0, lineas.length - 1, 0, 1);

            let r = random(255);
            let g = random(255);  
            let b = random(255);

            let c1= color(r, g, b);
            let c2 = color(red(c1),green(c1), blue(c1));

            let c = lerpColor(c1, c2, inter);*/


                /* //Mover los puntos de inicio y final a lo largo de los bordes de la pantalla

        this.xinicial = map(mouseY, 0, height, 0, width);
        this.xfinal = map(mouseY, 0,height,width,0);
        this.yinicial = 0;
        this.yfinal = height;
        
        */

        //Actualizar la posicion de los inicios y finales
      /*  for(let i = 0; i<this.lineas.length;i++){

            let linea = this.lineas[i];

            //Agregar variables para representar el desplazamiento vertical permitido para los puntos de inicio y final.
            //Ajustar la posicion de los puntos iniciales y finales en funcion de la posicion del mouse en el eje Y

            const yInicialOffset = map(linea.yinicial, 0, height, -this.maxOffsetY,this.maxOffsetY);
            const yFinalOffset = map(linea.yfinal, 0, height, -this.maxOffsetY,this.maxOffsetY); 

            linea.xinicial = 0;
            linea.xfinal = width;
            
            linea.yinicial = mouseY + yInicialOffset;
            linea.yfinal = mouseY + yFinalOffset;
            
            //Restricciones para que las líneas permanezcan dentro de la pantalla

            linea.yinicial = constrain(linea.yinicial, 0, height);
            linea.yfinal = constrain(linea.yfina, 0, height);
        }*/