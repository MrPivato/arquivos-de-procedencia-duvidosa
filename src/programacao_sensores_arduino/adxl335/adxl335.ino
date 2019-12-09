int x, y, z;
void setup() {
  Serial.begin(9600); //seta serial port to 9600
}
void loop() {
  x = analogRead(0);
  y = analogRead(1);
  z = analogRead(2);
  Serial.println("Aceleration: ");
  Serial.println(" X: ");
  Serial.println(x, DEC);
  Serial.println(" Y: ");
  Serial.println(y, DEC);
  Serial.println(" Z: ");
  Serial.println(z, DEC);
  delay(200);
}
