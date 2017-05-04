closeSerial;
serialInfo = instrhwinfo('serial');
comPort = 'COM4';
[accelerometer.s,flag]= setupSerial(comPort);
calCo = calibrate(accelerometer.s);
[gx, gy, gz] = readAcc(accelerometer,calCo);