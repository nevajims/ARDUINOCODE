const int analogInputA0 = A0;
const int analogInputA1 = A1;
const int analogInputA2 = A2;
unsigned int sensorValue = 0;

void setup() {
Serial.begin(9600);
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:
 

sensorValue = analogRead(analogInputA0);
Serial.println(sensorValue);
sensorValue = analogRead(analogInputA1);
Serial.println(sensorValue);
sensorValue = analogRead(analogInputA2);
Serial.println(sensorValue);


//wait 20 milliseconds before the next loop for the A to D to settle after the last reading
delay(2000);
}
