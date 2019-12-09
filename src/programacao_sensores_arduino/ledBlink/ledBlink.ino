int led = 10;
void setup() {
  pinMode(led, OUTPUT);

}
void loop() {
  digitalWrite(led, HIGH);
  delay(600);
  digitalWrite(led, LOW);
  delay(600);
}
