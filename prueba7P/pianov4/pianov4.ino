int valorSensor1;
int valorSensor2;
int sensores[6];
String valores[6]={"c","d","g","e","f","a"};

void setup() {
 Serial.begin(9600);      
  
}

void loop() {
  for(int i=0;i<6;i++){
      sensores[i]=analogRead('A'+i);   
    }

  for(int i=0;i<6;i++){
      if(sensores[i]>500){
          Serial.println(valores[i]);
          delay(100);         
        }
    
    }


}
