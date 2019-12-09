int red = 8;
int blue = 9;
int green = 10;
void setup()
{
	pinMode(red, OUTPUT);
	pinMode(blue, OUTPUT);
	pinMode(green, OUTPUT);
}
void loop()
{
	digitalWrite(red, HIGH);
	delay(500);
	digitalWrite(red, LOW);
	//delay(500); -- off for a while
	digitalWrite(blue, HIGH);
	delay(500);
	digitalWrite(blue, LOW);
	//delay(500); -- off for a while
	digitalWrite(green, HIGH);
	delay(500);
	digitalWrite(green, LOW);
	//delay(500); -- off for a while
}