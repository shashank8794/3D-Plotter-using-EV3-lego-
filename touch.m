function []=touch(mymotorB,mytouch1)
resetRotation(mymotorB);
while 1
touch=readTouch(mytouch1);
 if touch == 0
    mymotorB.Speed =-40;
    start(mymotorB);
 else
    stop(mymotorB);
    break;
 end
end
 resetRotation(mymotorB);
 while 1
    rotationb= abs(readRotation(mymotorB));
    mymotorB.Speed = 20;
      start(mymotorB);
     if (rotationb >= 25)
        stop(mymotorB);
        
        % start(mymotorB)   
          break; 
     end  
 end
end