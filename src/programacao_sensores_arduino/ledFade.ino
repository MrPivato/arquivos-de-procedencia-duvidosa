int led = 10;
int bright = 0;
int fade = 5;
void setup()
{
	pinMode(led, OUTPUT);
}
void loop()
{
	analogWrite(led, bright);
	bright = bright + fade;
	if(bright == 0 || bright == 255){
	    fade = -fade;
	}
	delay(20);
}