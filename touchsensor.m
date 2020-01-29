close all;
clear all;
clc;
mylego = legoev3('usb');
mymotorA = motor(mylego,'A');
mymotorB = motor(mylego,'B');
mymotorC = motor(mylego,'C');
mytouch = touchSensor(mylego,1);
mymotorA.Speed =0;
mymotorB.Speed =0;
mymotorC.Speed =0;
start(mymotorA);
start(mymotorB);
start(mymotorC);

resetRotation(mymotorB);
while 1
touch=readTouch(mytouch);
if touch == 0
    mymotorB.Speed =20;
    start(mymotorB);
else
    stop(mymotorB)
    break;
end
end

resetRotation(mymotorB);
while 1
   rotationb= abs(readRotation(mymotorB));
   mymotorB.Speed = -20;
     start(mymotorB);
    if (rotationb >= 10)
       stop(mymotorB);
       
       % start(mymotorB)   
         break; 
    end  
end