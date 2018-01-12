import processing.serial.*;

Serial mipuerto;
String val;

void setup(){
String nombrePuerto=Serial.list()[0];
mipuerto= new Serial(this,nombrePuerto,9600);

}

void draw(){
  if(mipuerto.available()>0){val=mipuerto.readStringUntil('\n');}
  println(val);

}