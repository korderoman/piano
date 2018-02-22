import processing.sound.*;
Pianos piano;
Serial mipuerto;
String cadena="";
String[] sensoresString;
float[] sensores;
int[] aux={10,10,10,10,10,10};

void setup(){
  size(300,300);
  piano= new Pianos(this);
  mipuerto=new Serial(this, Serial.list()[0],115200);
}


void draw(){
  background(0);
  if(mipuerto.available()>0){
    cadena=mipuerto.readStringUntil('\n');
    if(cadena!=null){
      sensoresString=split(cadena,",");
      sensores=float(sensoresString);
      for(int i=0;i<sensores.length;i++){
        if(sensores[i]>700){
           if(aux[i]!=i){
                piano.tecla(i);
                aux[i]=i;
           
           }

          
           
 
        }else if(sensores[i]<700){
               aux[i]=10;
           }
        //println(sensores[i]);
      }
      
     
    }
    
    
    
  }
  
}