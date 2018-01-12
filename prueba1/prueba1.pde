Pianos piano;

void setup(){
  size(600,500);
  piano= new Pianos(this);
   
}
void draw(){
  background(0);
   piano.dibujar();
   

}

void mousePressed(){piano.tecla();}