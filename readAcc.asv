function [gx, gy, gz] = readAcc(out,calCo)
fprintf(out.s,'R')
% read values from acceleraometer
a = fscanf(out.s,'%u')
size(a)
disp(num2str(a))

%readings(1) = fscanf(out.s,'%u');
readings(1) = a;
readings(2) = fscanf(out.s,'%u');
readings(3) = fscanf(out.s,'%u');

size(readings)

% determine what offset and gain values to use
offset  =  calCo.offset              ;
gain    =  calCo.g                   ;
accel   = (readings - offset)./gain  ;

% map analog inputs to axes
gx = accel(1);
gy = accel(2);
gz = accel(3);
end %function [gx gy gz] = readAcc(out,calCo)