function []=motorbfrwd(mymotorB)
resetRotation(mymotorB)
while 1
    rotationb = abs(readRotation(mymotorB));
     mymotorB.Speed =20;
    if (rotationb >= 142)
       stop(mymotorB);
       % start(mymotorB)   
         break; 
    end  
    
    
end
end