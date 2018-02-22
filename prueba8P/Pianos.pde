import processing.serial.*;

class Pianos{
  //definiendo constantes de construcción
    
  final String tipoArchivo=".wav"; // tipo de archivo que se maneja
  String [] notasID={"c","d","e","f","g","a","b","newc","newd","newe","newf","newg","newa","newb"};//ID de notas musicales
  ArrayList<SoundFile> notas= new ArrayList();//Agrupamos los objetos en un arrayList
  
  //Constructor
  Pianos(PApplet p){
    //cargamos todas las notas musicales
    for(int i=0;i<notasID.length;i++){notas.add(new SoundFile(p,notasID[i]+tipoArchivo));}
    
  }
   
    void tecla(int i){
     // if(notas.get(i).isPlaying()==1){
        //notas.get(i).stop();        
      //}
      //else{
                notas.get(i).play();
               
      //}
         
       
    }
    


}