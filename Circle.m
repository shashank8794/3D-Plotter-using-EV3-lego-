function []=Circle(mymotorA,mymotorB)
 r = 45;
 %circumA = 171;
 %circumB = 112;

resetRotation(mymotorA)
resetRotation(mymotorB)
 rotationA = abs(readRotation(mymotorA));
 rotationB = abs(readRotation(mymotorB));
 %while 1
%  mymotorB.Speed = -15;
%      start(mymotorB);
%     if (rotationB >= 80)
%        stop(mymotorB);
%     end  
  start(mymotorB);
  start(mymotorA);
  
  for  th = 0:pi/73:2 * pi
      if(sin(th) < 0.707 || sin(th) > -0.707)
            mymotorA.Speed = -((r) * sin(th) * 1.13)/2;
         %   rotationA = abs(readRotation(mymotorA));
          %  Circlelastquadrant(mymotorA,rotationA)
      end
      if(cos(th) < 0.707 || cos(th) > -0.707)
      mymotorB.Speed =  ((r) * cos(th) * 1.99)/2;
     % rotationA = abs(readRotation(mymotorA));
     % Circlelastquadrant(mymotorA,rotationA)
      end
  end
  %plot(mymotorA.Speed , mymotorB.Speed)
  %if th > 359
   %break;
  %end
 %end  
      stop(mymotorB);
      stop(mymotorA);
      pause(0.3);
     
    
end