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
  void tecla(int valor){
    if(valor==1){notaDO.play(); notaDO.rewind();}
    
    /*Disminuir el valor de la resistencia regula mejor la calibracion
    la resistencia ideal, bueno hasta el momento es de 10k*/
 
    
    }
    
}
//Fin de la clase