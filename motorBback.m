function []=motorBback(mymotorB)
resetRotation(mymotorB)
mymotorB.Speed =30;
start(mymotorB);
while 1
    rotation = abs(readRotation(mymotorB));
    if (rotation>74)
        stop(mymotorB)
        break;
    end
end



end