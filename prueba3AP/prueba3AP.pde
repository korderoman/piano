import processing.serial.*;

Pianos piano;
Serial mipuerto;
String valor="Z";
void setup(){
  size(900,250);
  piano=new Pianos(this);
  mipuerto=new Serial(this,Serial.list()[1],9600);
   

}

void draw(){
  background(0);
  piano.dibujar();
  if(mipuerto.available()>0){
    valor=mipuerto.readString();
    piano.tecla(valor);
    
    /*
    if(variable.equals("C")){piano.tecla(1);}//teclaDO
    if(variable.equals("D")){piano.tecla(2);}//teclaRe
    if(variable.equals("E")){piano.tecla(3);}//teclaMI
    if(variable.equals("F")){piano.tecla(4);}//teclaFa
    if(variable.equals("G")){piano.tecla(5);}//teclaSol
    if(variable.equals("A")){piano.tecla(6);}//teclaLa
    if(variable.equals("B")){piano.tecla(7);}//teclaSi
    //teclas negras
    if(variable.equals("C2")){piano.tecla(1);}//teclaDO
    if(variable.equals("D2")){piano.tecla(2);}//teclaRe
    if(variable.equals("E2")){piano.tecla(3);}//teclaMI
    if(variable.equals("F2")){piano.tecla(4);}//teclaFa
    if(variable.equals("G2")){piano.tecla(5);}//teclaSol
    if(variable.equals("A2")){piano.tecla(6);}//teclaLa
    if(variable.equals("B2")){piano.tecla(7);}//teclaSi
    */
    
    
    
    
    println(valor);
    
  }
  
  
  
}