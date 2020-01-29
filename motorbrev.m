function []=motorbrev(rotation)
mymotorB = motor(mylego,'B');
resetRotation(mymotorB)

while 1
    rotation = readRotation(mymotorB);
    if (rotation<100)
        mymotorB.speed =-20;
        start(mymotorB)
        
        
        
        
    elseif (rotation>100 && rotation<120)
         pause(5);
         newrotation = readRotation(mymotorB);
         resetRotation(mymotorB)
         rotation =121;
    elseif (rotation>121 && rotation<320)
        mymotorB.speed =20;
        start(mymotorB)
        
    else
        stop(mymotorB)
        break;
       
    end
    
    
end



end