//jims program
int ledpin = 13;


void setup() {
Serial.begin(9600);
Serial.println('a');
char a = 'b';
while (a!='a');
{
 //wait for specific character
a = Serial.read();
 
  }
}

void loop() {


}
