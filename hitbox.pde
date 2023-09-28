void dibujarHitbox1(){
  
    FLine lineacorazon = new FLine(408, 170, 428, 170);
    
    lineacorazon.setGrabbable(false);
    lineacorazon.setName("boxcorazon");
    lineacorazon.setStroke(0, 255, 0);
    lineacorazon.setStrokeWeight(10);
    mundo.add(lineacorazon);
    lineacorazon.setNoStroke();
}

void dibujarHitbox2(){
  
    FLine lineaanular = new FLine(465, 191, 485, 191);
    
    lineaanular.setGrabbable(false);
    lineaanular.setName("boxanular");
    lineaanular.setStroke(0, 255, 0);
    lineaanular.setStrokeWeight(10);
    mundo.add(lineaanular);
    lineaanular.setNoStroke();
}

void dibujarHitbox3(){
  
    FLine lineameñique = new FLine(510, 235, 525, 235);
    
    lineameñique.setGrabbable(false);
    lineameñique.setName("boxmeñique");
    lineameñique.setStroke(0, 255, 0);
    lineameñique.setStrokeWeight(10);
    mundo.add(lineameñique);
    lineameñique.setNoStroke();
}

void dibujarHitbox4(){
  
    FLine lineaindice = new FLine(340, 191, 360, 191);
    
    lineaindice.setGrabbable(false);
    lineaindice.setName("boxindice");
    lineaindice.setStroke(0, 255, 0);
    lineaindice.setStrokeWeight(10);
    mundo.add(lineaindice);
    lineaindice.setNoStroke();
}

void dibujarHitbox5(){
  
    FLine lineapulgar = new FLine(285, 315, 305, 315);
    
    lineapulgar.setGrabbable(false);
    lineapulgar.setName("boxpulgar");
    lineapulgar.setStroke(0, 255, 0);
    lineapulgar.setStrokeWeight(10);
    mundo.add(lineapulgar);
    lineapulgar.setNoStroke();
}
