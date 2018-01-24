
Pianos piano;

void setup(){
  size(900,250);
  piano= new Pianos(this);
   
}
void draw(){
  background(0);
   piano.dibujar();
   

}

void mousePressed(){piano.tecla();}