function []=uppencil(mymotorA,mymotorB,mymotorC,mytouch2)
mymotorC.Speed = -30;
%start(mymotorC);
%up
resetRotation(mymotorC);
while 1
touch2=readTouch(mytouch2);
  if touch2 == 1
    start(mymotorC);
  else
      stop(mymotorA);
      stop(mymotorB);
    %resetRotation(mymotorC);
    rotationC = abs(readRotation(mymotorC));
    if(rotationC > 40)
      stop(mymotorC);
      
      break;
    end
  end
end
end

