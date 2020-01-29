function []=downPencil(mymotorC, mytouch2)
mymotorC.Speed =0;
start(mymotorC);
resetRotation(mymotorC)
%     if (rotation>2.25)
%     stop(mymotorC);
  while 1
   
   touch2=readTouch(mytouch2);
   if touch2 == 0
    mymotorC.Speed = 50;
    start(mymotorC);
   else
    stop(mymotorC)
    break;
   end
  end
   
end

