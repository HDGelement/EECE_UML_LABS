int i, freq, duration;
int pin = 13;
int pushButton = 12;
int pushButton2 = 11;
int pushButton3 = 10;
int buttonState;
int buttonState2;
int buttonState3;

void setup() {
  // FOR TROUBLEHSOOTING PURPOSES
  Serial.begin(9600);
  pinMode(pushButton, INPUT);
  pinMode(pushButton2, INPUT);
  pinMode(pushButton3, INPUT);

  buttonState = digitalRead(pushButton);
  buttonState2 = digitalRead(pushButton2);
  buttonState3 = digitalRead(pushButton3);
  
  while(buttonState == HIGH && buttonState2 == HIGH && buttonState3 == HIGH){ //ask user to press a damn button if it hasn't been pressed
    Serial.println("Please Press a Button");
    buttonState = digitalRead(pushButton);
    buttonState2 = digitalRead(pushButton2);
    buttonState3 = digitalRead(pushButton3);
    delay(250);
  }
  
  if(buttonState == LOW){ //button 1 sound
    delay(250);
    Serial.println("Alarm...");
    for(i = 0 ; i < 4 ; i++){
      tone(pin, 1500, 500);
      delay(500);
      noTone(pin);
      (500);
    }

}
  else if (buttonState2 == LOW){ //button 2 sound
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
  
  else if (buttonState3 == LOW){ //button 3 sound
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



// CODE USED FOR TROUBLESHOOTING PURPOSES
void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(pushButton);
  Serial.println(buttonState);
  delay(250);
  buttonState2 = digitalRead(pushButton2);
  Serial.println(buttonState2);
  delay(250);
  buttonState3 = digitalRead(pushButton3);
  Serial.println(buttonState3);
  delay(250);
}
