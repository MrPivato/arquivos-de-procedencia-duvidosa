int out;
void setup() {
  Serial.begin(9600);
}

void loop() {
  out = analogRead(0);
  Serial.println(out, DEC);
  delay(200);
}
