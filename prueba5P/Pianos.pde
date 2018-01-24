import ddf.minim.*;
class Pianos{
Minim mini;


AudioPlayer nDo1,nRe1,nMi1,nFa1,nSol1,nLa1,nSi1;
AudioPlayer nDo2,nRe2,nMi2,nFa2,nSol2,nLa2,nSi2;

//definiendo constantes de construcción
final PVector blancas=new PVector(120,50); //coordenadas de inicio de las teclas blancas
final PVector negras= new PVector(132,90); // coordenadas de inicio de las teclas negras
final int teclaA=50; //ancho de cada tecla
final PVector blancasD= new PVector(60,150);//Dimensiones de las teclas blancas
final PVector negrasD= new PVector(30,80);//Dimensiones de las teclas negras
final String direccion="./sonidos/wav/"; //Lugar de almacenamiento de las teclas
final String tipoArchivo=".wav"; // tipo de archivo que se maneja
String [] notasID={"c","d","e","f","g","a","b","newc","newd","newe","newf","newg","newa","newb"};//ID de notas musicales
ArrayList<AudioPlayer> notas= new ArrayList();//Agrupamos los objetos en un arrayList

Pianos(PApplet p){
  mini= new Minim(p);
  //cargamos todas las notas musicales
  for(int i=0;i<notasID.length;i++){
    notas.add(mini.loadFile(direccion+notasID[i]+tipoArchivo));
  }
}

//Método que construye el piano
  void dibujar(){
    for(int i=0; i<14;i++){
        fill(255);
        rect(blancas.x+teclaA*i,blancas.y,blancasD.x,blancasD.y);
        fill(0);
        rect(negras.x+teclaA*i,negras.y,negrasD.x,negrasD.y);
    }
  }
  
//metodo de reconocimiento del area pulsada
  void tecla(){
    if(mouseY>=negras.y && mouseY<negras.y+80){
        for(int i=0; i<14;i++){
            if(negras.x+teclaA*(i)<mouseX && mouseX<negras.x+teclaA*(i+1)){
              notas.get(i).play();notas.get(i).rewind();
            }
          } 
      }
    //Fin del condicional if
   
  }
    //Fin del método tecla
    
}
//Fin de la clase