int ledRED = 13;
int ledYELLOW = 11;
int ledGREEN = 12;
int ledRED2 = 8;
int ledYELLOW2 = 9;
int ledGREEN2 = 10;

void setup() {
 pinMode(ledRED,OUTPUT);
 pinMode(ledYELLOW,OUTPUT);
 pinMode(ledGREEN,OUTPUT);
 pinMode(ledRED2,OUTPUT);
 pinMode(ledYELLOW2,OUTPUT);
 pinMode(ledGREEN2,OUTPUT);
}

void loop() {
  changeLights();
  delay(15000);
}

void changeLights(){
  digitalWrite(ledYELLOW,LOW);
  digitalWrite(ledGREEN2,LOW);
  digitalWrite(ledYELLOW2,LOW);
  digitalWrite(ledGREEN,HIGH);
  digitalWrite(ledRED2, HIGH);
  delay(35000);

  digitalWrite(ledGREEN,LOW);
  digitalWrite(ledYELLOW,HIGH);
  digitalWrite(ledRED2, HIGH);
  delay(10000);

  digitalWrite(ledRED2, LOW);
  digitalWrite(ledYELLOW, LOW);  
  digitalWrite(ledRED, HIGH);
  digitalWrite(ledGREEN2, HIGH);
  delay(45000);
// hello
   digitalWrite(ledYELLOW2,LOW);
  digitalWrite(ledGREEN,LOW);
  digitalWrite(ledYELLOW,LOW);
  digitalWrite(ledGREEN2,HIGH);
  digitalWrite(ledRED, HIGH);
  delay(35000);

  digitalWrite(ledGREEN2,LOW);
  digitalWrite(ledYELLOW2,HIGH);
  digitalWrite(ledRED, HIGH);
  delay(10000);

  digitalWrite(ledRED, LOW);
  digitalWrite(ledYELLOW2, LOW);  
  digitalWrite(ledRED2, HIGH);
  digitalWrite(ledGREEN, HIGH);
  delay(45000);
}
