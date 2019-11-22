int pushButton = 12;
int buttonState;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pushButton, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(pushButton);
  Serial.println(buttonState);
  delay(250);
}
