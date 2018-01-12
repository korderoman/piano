import ddf.minim.*;

int ancho=50;
int pInicial=132;
Minim mini;
AudioPlayer nDo1,nRe1,nMi1,nFa1,nSol1,nLa1,nSi1;
AudioPlayer nDo2,nRe2,nMi2,nFa2,nSol2,nLa2,nSi2;
class Pianos{

  Pianos(PApplet p){
    mini=new Minim(p);
    //cargamos las notas musicales blancas
    nDo1=mini.loadFile("./sonidos/wav/c.wav");
    nRe1=mini.loadFile("./sonidos/wav/d.wav");
    nMi1=mini.loadFile("./sonidos/wav/e.wav");
    nFa1=mini.loadFile("./sonidos/wav/f.wav");
    nSol1=mini.loadFile("./sonidos/wav/g.wav");
    nLa1=mini.loadFile("./sonidos/wav/a.wav");
    nSi1=mini.loadFile("./sonidos/wav/b.wav");
    //cargamos las notas musiclaes negras
    nDo2=mini.loadFile("./sonidos/wav/newc.wav");
    nRe2=mini.loadFile("./sonidos/wav/newd.wav");
    nMi2=mini.loadFile("./sonidos/wav/newe.wav");
    nFa2=mini.loadFile("./sonidos/wav/newf.wav");
    nSol2=mini.loadFile("./sonidos/wav/newg.wav");
    nLa2=mini.loadFile("./sonidos/wav/newa.wav");
    nSi2=mini.loadFile("./sonidos/wav/newb.wav");
    
    
    
  }
  
      void dibujar(){
        for(int i=0;i<14;i++){
          fill(255);
          rect(120+ancho*i,50,60,150);
          fill(0);
          rect(pInicial+ancho*i,90,30,80);
        
        }}
        
      void tecla(String valor){
        if(valor.equals("C")){nDo1.play();nDo1.rewind();}//teclaDO
        if(valor.equals("D")){nRe1.play();nRe1.rewind();}//teclaRe
        if(valor.equals("E")){nMi1.play();nMi1.rewind();}//teclaMI
        if(valor.equals("F")){nFa1.play();nFa1.rewind();}//teclaFa
        if(valor.equals("G")){nSol1.play();nSol1.rewind();}//teclaSol
        if(valor.equals("A")){nLa1.play();nLa1.rewind();}//teclaLa
        if(valor.equals("B")){nSi1.play();nSi1.rewind();}//teclaSi
    //teclas negras
        if(valor.equals("C2")){nDo2.play();nDo2.rewind();}//teclaDO
        if(valor.equals("D2")){nRe2.play();nRe2.rewind();}//teclaRe
        if(valor.equals("E2")){nMi2.play();nMi2.rewind();}//teclaMI
        if(valor.equals("F2")){nFa2.play();nFa2.rewind();}//teclaFa
        if(valor.equals("G2")){nSol2.play();nSol2.rewind();}//teclaSol
        if(valor.equals("A2")){nLa2.play();nLa2.rewind();}//teclaLa
        if(valor.equals("B2")){nSi2.play();nSi2.rewind();}//teclaSi
      }
      


}