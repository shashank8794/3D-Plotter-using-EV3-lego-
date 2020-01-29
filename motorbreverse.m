function []=motorbreverse(mymotorB)
resetRotation(mymotorB)
while 1
    rotationb= abs(readRotation(mymotorB));
     mymotorB.Speed = -20;
     start(mymotorB);
    if (rotationb >= 159)
       stop(mymotorB);
       
       % start(mymotorB)   
         break; 
    end  
    
    
end
end
