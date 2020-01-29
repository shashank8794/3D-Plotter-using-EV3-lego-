close all;
clear all;
clc;
mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
mymotorB = motor(mylego,'B');
mymotorC = motor(mylego,'C');
mytouch1 = touchSensor(mylego,1);
mytouch2 = touchSensor(mylego,2);
mymotorA.Speed =0;
mymotorB.Speed =0;
mymotorC.Speed =0;
start(mymotorA);
start(mymotorB);
start(mymotorC);

touch(mymotorB,mytouch1);
pause(0.3);
mymotorB.Speed =0;  
start(mymotorB);
resetRotation(mymotorA)
resetRotation(mymotorB)
resetRotation(mymotorC)
rotationB = abs(readRotation(mymotorB));
downPencil(mymotorC, mytouch2)
pause(0.3);

square(mymotorA,mymotorB)
    Triangle(mymotorA,mymotorB);
    pause(0.3);
    uppencil(mymotorA,mymotorB,mymotorC, mytouch2);
    pause(0.3);
%stop(mymotorA);
%stop(mymotorB);
motorBback(mymotorB);
pause(0.3);
downPencil(mymotorC, mytouch2)
pause(0.5);
Circle(mymotorA,mymotorB)
uppencil(mymotorA,mymotorB,mymotorC, mytouch2);
stop(mymotorA);
stop(mymotorB);
stop(mymotorC);