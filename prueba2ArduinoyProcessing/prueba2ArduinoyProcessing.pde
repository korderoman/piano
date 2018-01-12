import processing.serial.*;

Pianos piano;
Serial mipuerto;
String numero="no";

void setup(){
  size(600,500);
  piano= new Pianos(this);
  mipuerto=new Serial(this,Serial.list()[0],9600);
  //printArray(Serial.list());
   
}
void draw(){
  background(0);
  piano.dibujar();
  if(mipuerto.available()>0){
    String variable=mipuerto.readString();
    if(variable.equals("A")){piano.tecla(1);}
    if(variable.equals("Z")){println("no te detecto");}
    println(variable);
  } //<>//
  
  
   
}