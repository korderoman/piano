import processing.sound.*;

class Pianos{
//definiendo constantes de construcción
final PVector blancas=new PVector(120,50); //coordenadas de inicio de las teclas blancas
final PVector negras= new PVector(132,90); // coordenadas de inicio de las teclas negras
final int teclaA=50; //ancho de cada tecla
final PVector blancasD= new PVector(60,150);//Dimensiones de las teclas blancas
final PVector negrasD= new PVector(30,80);//Dimensiones de las teclas negras

final String tipoArchivo=".wav"; // tipo de archivo que se maneja
String [] notasID={"c","d","e","f","g","a","b","newc","newd","newe","newf","newg","newa","newb"};//ID de notas musicales
ArrayList<SoundFile> notas= new ArrayList();//Agrupamos los objetos en un arrayList


Pianos(PApplet p){
 
  //cargamos todas las notas musicales
  for(int i=0;i<notasID.length;i++){
    notas.add(new SoundFile(p,notasID[i]+tipoArchivo));
  }
}

//Método que construye el piano
  void dibujar(){
    for(int i=0; i<notasID.length;i++){
        fill(255);
        rect(blancas.x+teclaA*i,blancas.y,blancasD.x,blancasD.y);
        fill(0);
        rect(negras.x+teclaA*i,negras.y,negrasD.x,negrasD.y);
    }
  }
  
  void tecla(String valor){
    for(int i=0;i<notasID.length;i++){
      if(notasID[i].equals(valor)){
        notas.get(i).play();
      }
    }
    
  }






}