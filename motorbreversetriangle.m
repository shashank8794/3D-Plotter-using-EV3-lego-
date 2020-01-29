function []=motorbreversetriangle(mymotorB)
resetRotation(mymotorB)
while 1
    rotationb= abs(readRotation(mymotorB));
     mymotorB.Speed = -30;
     start(mymotorB);
    if (rotationb >= 163)
       stop(mymotorB);
       
       % start(mymotorB)   
         break; 
    end  
    
    
end
end