int led = 13;

void setup() 
{
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() 
{
  // put your main code here, to run repeatedly:
  digitalWrite(led, HIGH);
  Serial.println("The LED connected to pin 9 is On!");
  delay(500);
  digitalWrite(led, LOW);
  Serial.println("Led is Off");
  delay(500);
}
