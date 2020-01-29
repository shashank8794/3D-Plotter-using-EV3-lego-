function []=Triangle(mymotorA,mymotorB)
mymotorA.Speed =0;
mymotorB.Speed =0;
start(mymotorA);
start(mymotorB);
resetRotation(mymotorA)
resetRotation(mymotorB)
rotationB = abs(readRotation(mymotorB));
while 1
 rotation = abs(readRotation(mymotorA));
  mymotorA.Speed = -20;
  mymotorB.Speed = 20;
  pause(0.05);
    if (rotation>93)
    stop(mymotorB);
    stop(mymotorA);
    pause(0.5);
    break;
    end
end
resetRotation(mymotorA)
start(mymotorA);
start(mymotorB);
while 1
 rotation = abs(readRotation(mymotorA))+7;
  mymotorA.Speed = 15;
  mymotorB.Speed = 22;
  pause(0.05);
    if (rotation>108)
    stop(mymotorB);
    stop(mymotorA);
    pause(0.5);
  %  motorbreverse(mymotorB)
    motorbreversetriangle(mymotorB)
   
    break;
    end
    
end
resetRotation(mymotorA)
end
