#include <Wire.h>
#include <Adafruit_BMP085.h>
Adafruit_BMP085 bmp;
void setup() {
  Serial.begin(9600);
  if (!bmp.begin()){
    Serial.println("No BMP085!!!");
    while (1){}
  }

}

void loop() {
  Serial.println("Temperature = ");
  Serial.println(bmp.readTemperature());
  Serial.println(" *C");
  //
  Serial.println("Pressure = ");
  Serial.println(bmp.readPressure());
  Serial.println(" Pa");
  //
  Serial.println("Altitude = ");
  Serial.println(bmp.readAltitude());
  Serial.println(" Meters");
  //
  Serial.println("Real Altitude = ");
  Serial.println(bmp.readAltitude(101500));
  Serial.println(" Merers");
  Serial.println();
  delay(600);
}
