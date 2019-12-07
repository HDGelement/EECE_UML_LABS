int n;
int photopin = 0;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Photo Resister Reading; ");
}

void loop() {
  // put your main code here, to run repeatedly:
  n = analogRead(photopin);
  Serial.println(n);
  delay(100);
}
