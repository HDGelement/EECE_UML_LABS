int i, freq, duration;
int pin = 13;
int pushButton = 12;
int pushButton2 = 11;
int pushButton3 = 10;
int buttonState;
int buttonState2;
int buttonState3;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pushButton, INPUT);
  pinMode(pushButton2, INPUT);
  pinMode(pushButton3, INPUT);
  
  while(buttonState == LOW && buttonState2 == LOW && buttonState3 == LOW){ //ask user to press a damn button if it hasn't been pressed
    Serial.println("Please Press a Button");
    buttonState = digitalRead(pushButton);
    buttonState2 = digitalRead(pushButton2);
    buttonState3 = digitalRead(pushButton3);
    delay(250);
  }
  
  if(buttonState == HIGH){ //button 1 sound
    delay(250);
    Serial.println("Alarm...");
    for(i = 0 ; i < 4 ; i++){
      tone(pin, 1500, 500);
      delay(500);
      noTone(pin);
      (500);
    }
}
  else if (buttonState2 == HIGH){ //button 2
    delay(1000);
    Serial.println("Robot...");
    tone(pin, 2800, 100);
    delay(100);
    tone(pin, 2400, 200);
    delay(200);
    tone(pin, 4200, 140);
    delay(140);
    tone(pin, 2000, 30);
    delay(30);
    delay(100);
  }
  else if (buttonState3 == HIGH){ //button 3
    delay(1000);
    Serial.println("Hyperspace...");
    for(duration = 15 ; duration > 0 ; duration--){
      for(freq = 2000 ; freq <= 2500 ; freq = freq + 20){
        tone(pin, freq, duration);
        delay(duration);
      }
    }
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("Button 1:");
  buttonState = digitalRead(pushButton);
  Serial.println(buttonState);
  delay(250);
  Serial.print("Button 2:");
  buttonState2 = digitalRead(pushButton2);
  Serial.println(buttonState2);
  delay(250);
  Serial.print("Button 3:");
  buttonState3 = digitalRead(pushButton3);
  Serial.println(buttonState3);
  delay(250);
}
