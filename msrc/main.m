clc; clear;
libName = setupLib();
portNum = setupPort('COM7');
setupMotors(portNum);
tic

%goToHome(portNum);
pause(1);
tic
disp("home");
while(toc < 5)
    moveJoint(portNum,2,512,700,0,2.5);
    moveJoint(portNum,2,700,400,2.5,5);
    moveJoint(portNum,3,512,700,2,3);
    moveJoint(portNum,0,512,300,0,2);
    moveJoint(portNum,0,300,600,2,4);
    moveJoint(portNum,1,512,650,0,3);
end
goToHome(portNum);
% Close port
closePort(portNum);

% Unload Library
unloadlibrary(libName);