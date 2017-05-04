function [ s,flag] = setupSerial(comPort)

%  delete(instrfindall)  % may need to use this command to get this
%  progtram to work
%  serialInfo = instrhwinfo('serial')  % and this one to check the number of the com port 



flag = 1;
s = serial(comPort);
set(s,'DataBits',8);
set(s,'StopBits',1);
set(s,'BaudRate',9600);
set(s,'Parity','none');
fopen(s);
a = 'b';
while (a~='a')
    a = fread(s,1,'uchar');
end

if (a== 'a')
disp('serial read')
end
fprintf(s,'%c','a');
mbox = msgbox('Serial connection setup.'); uiwait(mbox);


end

