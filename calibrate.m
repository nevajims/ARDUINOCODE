function calCo = calibrate(s)
out.s        = s;
calCo.offset = 0;
calCo.g      = 1;

% read the raw accelerometer output at three different orientations
%gZ = 1, gX = gY = 0 orientation
mbox = msgbox('lay accelerometer so Z axis points up.', 'Calibration');
uiwait(mbox);
[gx_z, gy_z, gz_z] = readAcc(out,calCo);

%gX = 1, gY = gZ = 0 orientation
mbox = msgbox('lay accelerometer so X axis points up.', 'Calibration');
uiwait(mbox);
[gx_x, gy_x, gz_x] = readAcc(out,calCo);

%gY = 1, gx = gZ = 0 orientation
mbox = msgbox('lay accelerometer so Y axis points up.', 'Calibration');
uiwait(mbox);
[gx_y, gy_y, gz_y] = readAcc(out,calCo);

%Calculate offset for each axis
offsetX = (gx_z +gx_y) /2;
offsetY = (gy_x +gy_z) /2;
offsetZ = (gz_x +gz_y) /2;

%calculate scaling factors
gainX = gx_x - offsetX;
gainY = gy_y - offsetY;
gainZ = gz_z - offsetZ;

calCo.offset = [offsetX offsetY offsetZ]

calCo.g      = [gainX gainY gainZ]

mbox = msgbox('Sensor calibration complete');
uiwait(mbox);

end