
  
  
  
void setup() {
  // put your setup code here, to run once:

  Serial.begin(115200); 
}

void loop() {
  // put your main code here, to run repeatedly:
 unsigned long s = analogRead(A0);
 unsigned long s1 = analogRead(A1);
 unsigned long s2 = analogRead(A2);
 unsigned long s3 = analogRead(A3);
 unsigned long s4 = analogRead(A4);
 unsigned long s5 = analogRead(A5);
  Serial.print(s);
  Serial.print(",");
  Serial.print(s1);
  Serial.print(",");
  Serial.print(s2);
  Serial.print(",");
  Serial.print(s3);
  Serial.print(",");
  Serial.print(s4);
  Serial.print(",");
  Serial.print(s5);
  Serial.print("\n");
  delay(100);
}
