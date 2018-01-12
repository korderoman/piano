import ddf.minim.*;
class Pianos{
Minim mini;
AudioPlayer  notaDO, notaRE, notaMI,notaFA,notaSOL,notaLA,notaSI;
int constAncho=50;
int posicionInicial=132;
Pianos(PApplet p){
  mini= new Minim(p);
  notaDO=mini.loadFile("./sonidos/cDO.wav");
  notaRE=mini.loadFile("./sonidos/dRE.wav");
  notaMI=mini.loadFile("./sonidos/eMI.wav");
  notaFA=mini.loadFile("./sonidos/fFA.wav");
  notaSOL=mini.loadFile("./sonidos/gSOL.wav");
  notaLA=mini.loadFile("./sonidos/aLA.wav");
  notaSI=mini.loadFile("./sonidos/bSI.wav");
  
}

//Método que construye el piano
  void dibujar(){
  for(int i=0; i<7;i++){
        fill(255);
        rect(120+constAncho*i,125,60,150);
        fill(0);
        rect(posicionInicial+constAncho*i,190,30,80);
  }
  }
  
//metodo de reconocimiento del area pulsada
  void tecla(){
    if(mouseY>=190 && mouseY<275){
        if(posicionInicial<mouseX && mouseX<posicionInicial+constAncho){ println("Do"); notaDO.play(); notaDO.rewind();}
        if(posicionInicial+constAncho<mouseX && mouseX<posicionInicial+constAncho*2){println("Re"); notaRE.play();notaRE.rewind();}
        if(posicionInicial+constAncho*2<mouseX && mouseX<posicionInicial+constAncho*3){println("Mi");notaMI.play(); notaMI.rewind();}
        if(posicionInicial+constAncho*3<mouseX && mouseX<posicionInicial+constAncho*4){println("Fa");notaFA.play(); notaFA.rewind();}
        if(posicionInicial+constAncho*4<mouseX && mouseX<posicionInicial+constAncho*5){println("Sol"); notaSOL.play(); notaSOL.rewind();}
        if(posicionInicial+constAncho*5<mouseX && mouseX<posicionInicial+constAncho*6){ println("La");notaLA.play(); notaLA.rewind();}
        if(posicionInicial+constAncho*6<mouseX && mouseX<posicionInicial+constAncho*7){ println("Si"); notaSI.play(); notaSI.rewind();}
    
    }
    //Fin del condicional if
    }
    //Fin del método tecla
    
}
//Fin de la clase