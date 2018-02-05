import processing.serial.*;

Pianos piano;
String valor;
Serial mipuerto;

void setup(){
  size(900,250);
  piano= new Pianos(this);
  valor="";
  mipuerto= new Serial(this, Serial.list()[0],9600);
}
void draw(){
  background(0);
  piano.dibujar();
  if(mipuerto.available()>0){
    valor=mipuerto.readString();
    piano.tecla(valor);
  } 
   

}