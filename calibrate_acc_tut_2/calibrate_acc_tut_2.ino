
const int analogInputA0 = A0;
const int analogInputA1 = A1;
const int analogInputA2 = A2;

int mode = -1;
unsigned int sensorValue = 0;



void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
// check serial communication - achknowledgement routine
Serial.println('a');
char a = 'b';
while(a != 'a')
{
// wait for specific character from the PC
a = Serial.read();
}
}

void loop() {
  // put your main code here, to run repeatedly:
if (Serial.available() > 0 )  // check is any data been sent by the PC
{
mode = Serial.read();  //  check if there is a request for accelerometer values
if (mode == 'R') // used to set different modes for various operations. R is used to read accelerometer values
{
// read analog values of pin A0(x) A1(y) and A2(z) and send them to PC

sensorValue = analogRead(analogInputA0);
Serial.println(sensorValue);
sensorValue = analogRead(analogInputA1);
Serial.println(sensorValue);
sensorValue = analogRead(analogInputA2);
Serial.println(sensorValue);

}
//wait 20 milliseconds before the next loop for the A to D to settle after the last reading
delay(20);

}
}
