class Curvas{
    
    constructor(){

        // Generar inicios y finales

        this.xinicial = 0; 
        this.xfinal = width;
        this.yinicial = random(height);
        this.yfinal = random(height);

        //Curvas del medio

        this.xinicialm = random(width); 
        this.xfinalm = random(width);
        this.yinicialm = -10;
        this.yfinalm = height +10;

        // Generar puntos de control random

        this.cx1 = random(width);
        this.cx2 = random(width);
        this.cy1 = random(height);
        this.cy2 = random(height);

        this.lineas = lineas;
        
        this.colorLinea = color(random(255), random(255), random(255), 25);

        //Dar un desplazamiento máximo dme los puntos de control 
        this.maxOffsetX = width;
        this.maxOffsetY = height;
        

    }

    dibujar(){

        stroke(this.colorLinea);
        strokeWeight(25);
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
        strokeWeight(25);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicialm, this.yinicialm, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinalm, this.yfinalm);
        }
        stroke(this.colorLinea);
        strokeWeight(15);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicialm, this.yinicialm, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinalm, this.yfinalm);
        }
        stroke(this.colorLinea);
        strokeWeight(6);
        for(let i = 0; i <this.lineas.length; i++ ){

            noFill();
            bezier(this.xinicialm, this.yinicialm, this.cx1,this.cy1, this.cx2, this.cy2, this.xfinalm, this.yfinalm);
        }
        
    }

    movimiento(){

        this.cx1 = mouseX;
        this.cy1 = mouseY;


        const offsetX = map(mouseX, 0,width, -this.maxOffsetX, this.maxOffsetX);
        const offsetY = map(mouseY, 0, height, -this.maxOffsetY, this.maxOffsetY);
        
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