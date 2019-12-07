int n; 
int photopin = 0;
int i = 0;
int lightconstant = 0;
int lightpin = 13;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(lightpin ,OUTPUT);
  Serial.println("Photo Resistor Reading:");
  Serial.println("please do not cover the photoresister for 10 seconds.");
  delay(500);
  while (i < 5){
    lightconstant = analogRead(photopin);
    Serial.printf("i hate you : %d \n", lightconstant);
    i = i + 1;
  }
  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly:
  n = analogRead(photopin);
  Serial.println(n);
  delay(100);
  //lightoff
  if(lightconstant < n || lightconstant == n){
    n = analogRead(photopin);
    Serial.println("loop 1");
    digitalWrite(lightpin, LOW);
    delay(250);
  }
  //lighton
  else if(lightconstant > n){
    n = analogRead(photopin);
    Serial.println("loop 2");
    digitalWrite(lightpin, HIGH);
    delay(250);
  }
}
