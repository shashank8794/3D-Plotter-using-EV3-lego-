function []=square(mymotorA,mymotorB)
while 1
 rotation = abs(readRotation(mymotorA));
  mymotorA.Speed = -10;
    if (rotation>85)
    stop(mymotorA);
    pause(0.5);
   motorbfrwd(mymotorB)
   pause(0.5);
    break;
    end
    
end
resetRotation(mymotorA)
while 1
    rotation = abs(readRotation(mymotorA))+3;
    start(mymotorA);
    mymotorA.Speed = 10;
    if(rotation>90)
    stop(mymotorA);
    pause(0.5);
    motorbreverse(mymotorB)
    pause(0.5);
  % stop(mymotorB);
   break;
   
    end
    
end
pause(0.5);
end